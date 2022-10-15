.class public Lcom/github/mikephil/charting/renderer/LegendRenderer;
.super Lcom/github/mikephil/charting/renderer/Renderer;
.source "LegendRenderer.java"


# instance fields
.field protected mLegend:Lcom/github/mikephil/charting/components/Legend;

.field protected mLegendFormPaint:Landroid/graphics/Paint;

.field protected mLegendLabelPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/Legend;)V
    .locals 3
    .param p1, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;
    .param p2, "legend"    # Lcom/github/mikephil/charting/components/Legend;

    .prologue
    const/4 v2, 0x1

    .line 42
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/renderer/Renderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 44
    iput-object p2, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    .line 47
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41100000    # 9.0f

    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 48
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    .line 51
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 53
    return-void
.end method


# virtual methods
.method public computeLegend(Lcom/github/mikephil/charting/data/ChartData;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/mikephil/charting/data/ChartData",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "data":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<*>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v15}, Lcom/github/mikephil/charting/components/Legend;->isLegendCustom()Z

    move-result v15

    if-nez v15, :cond_a

    .line 82
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v10, "labels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v4, "colors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetCount()I

    move-result v15

    if-ge v7, v15, :cond_7

    .line 88
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v5

    .line 90
    .local v5, "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getColors()Ljava/util/List;

    move-result-object v2

    .line 91
    .local v2, "clrs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryCount()I

    move-result v6

    .line 94
    .local v6, "entryCount":I
    instance-of v15, v5, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    if-eqz v15, :cond_2

    move-object v15, v5

    check-cast v15, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    invoke-interface {v15}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->isStacked()Z

    move-result v15

    if-eqz v15, :cond_2

    move-object v1, v5

    .line 96
    check-cast v1, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    .line 97
    .local v1, "bds":Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getStackLabels()[Ljava/lang/String;

    move-result-object v12

    .line 99
    .local v12, "sLabels":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v15

    if-ge v8, v15, :cond_0

    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getStackSize()I

    move-result v15

    if-ge v8, v15, :cond_0

    .line 101
    array-length v15, v12

    rem-int v15, v8, v15

    aget-object v15, v12, v15

    invoke-interface {v10, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 105
    :cond_0
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getLabel()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_1

    .line 107
    const/4 v15, -0x2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getLabel()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v10, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    .end local v1    # "bds":Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    .end local v8    # "j":I
    .end local v12    # "sLabels":[Ljava/lang/String;
    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 111
    :cond_2
    instance-of v15, v5, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    if-eqz v15, :cond_4

    .line 113
    invoke-virtual/range {p1 .. p1}, Lcom/github/mikephil/charting/data/ChartData;->getXVals()Ljava/util/List;

    move-result-object v14

    .local v14, "xVals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v11, v5

    .line 114
    check-cast v11, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    .line 116
    .local v11, "pds":Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;
    const/4 v8, 0x0

    .restart local v8    # "j":I
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v15

    if-ge v8, v15, :cond_3

    if-ge v8, v6, :cond_3

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    if-ge v8, v15, :cond_3

    .line 118
    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v10, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 122
    :cond_3
    invoke-interface {v11}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getLabel()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_1

    .line 124
    const/4 v15, -0x2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-interface {v11}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getLabel()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v10, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 128
    .end local v8    # "j":I
    .end local v11    # "pds":Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;
    .end local v14    # "xVals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    instance-of v15, v5, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;

    if-eqz v15, :cond_5

    move-object v15, v5

    check-cast v15, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;

    invoke-interface {v15}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getDecreasingColor()I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_5

    move-object v15, v5

    .line 130
    check-cast v15, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;

    invoke-interface {v15}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getDecreasingColor()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v15, v5

    .line 131
    check-cast v15, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;

    invoke-interface {v15}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getIncreasingColor()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    const/4 v15, 0x0

    invoke-interface {v10, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getLabel()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v10, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 137
    :cond_5
    const/4 v8, 0x0

    .restart local v8    # "j":I
    :goto_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v15

    if-ge v8, v15, :cond_1

    if-ge v8, v6, :cond_1

    .line 140
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-ge v8, v15, :cond_6

    add-int/lit8 v15, v6, -0x1

    if-ge v8, v15, :cond_6

    .line 142
    const/4 v15, 0x0

    invoke-interface {v10, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    :goto_5
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 145
    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v15

    invoke-interface {v15}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getLabel()Ljava/lang/String;

    move-result-object v9

    .line 146
    .local v9, "label":Ljava/lang/String;
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 154
    .end local v2    # "clrs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5    # "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    .end local v6    # "entryCount":I
    .end local v8    # "j":I
    .end local v9    # "label":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v15}, Lcom/github/mikephil/charting/components/Legend;->getExtraColors()[I

    move-result-object v15

    if-eqz v15, :cond_9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v15}, Lcom/github/mikephil/charting/components/Legend;->getExtraLabels()[Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_9

    .line 155
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v15}, Lcom/github/mikephil/charting/components/Legend;->getExtraColors()[I

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/4 v15, 0x0

    :goto_6
    move/from16 v0, v17

    if-ge v15, v0, :cond_8

    aget v3, v16, v15

    .line 156
    .local v3, "color":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 157
    .end local v3    # "color":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v15}, Lcom/github/mikephil/charting/components/Legend;->getExtraLabels()[Ljava/lang/String;

    move-result-object v15

    invoke-static {v10, v15}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 160
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v15, v4}, Lcom/github/mikephil/charting/components/Legend;->setComputedColors(Ljava/util/List;)V

    .line 161
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v15, v10}, Lcom/github/mikephil/charting/components/Legend;->setComputedLabels(Ljava/util/List;)V

    .line 164
    .end local v4    # "colors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v7    # "i":I
    .end local v10    # "labels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v15}, Lcom/github/mikephil/charting/components/Legend;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v13

    .line 166
    .local v13, "tf":Landroid/graphics/Typeface;
    if-eqz v13, :cond_b

    .line 167
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v15, v13}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 169
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/github/mikephil/charting/components/Legend;->getTextSize()F

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 170
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/github/mikephil/charting/components/Legend;->getTextColor()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Paint;->setColor(I)V

    .line 173
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lcom/github/mikephil/charting/components/Legend;->calculateDimensions(Landroid/graphics/Paint;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 174
    return-void
.end method

.method protected drawForm(Landroid/graphics/Canvas;FFILcom/github/mikephil/charting/components/Legend;)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "index"    # I
    .param p5, "legend"    # Lcom/github/mikephil/charting/components/Legend;

    .prologue
    .line 405
    invoke-virtual {p5}, Lcom/github/mikephil/charting/components/Legend;->getColors()[I

    move-result-object v0

    aget v0, v0, p4

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 424
    :goto_0
    return-void

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    invoke-virtual {p5}, Lcom/github/mikephil/charting/components/Legend;->getColors()[I

    move-result-object v1

    aget v1, v1, p4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 410
    invoke-virtual {p5}, Lcom/github/mikephil/charting/components/Legend;->getFormSize()F

    move-result v6

    .line 411
    .local v6, "formsize":F
    const/high16 v0, 0x40000000    # 2.0f

    div-float v7, v6, v0

    .line 413
    .local v7, "half":F
    sget-object v0, Lcom/github/mikephil/charting/renderer/LegendRenderer$1;->$SwitchMap$com$github$mikephil$charting$components$Legend$LegendForm:[I

    invoke-virtual {p5}, Lcom/github/mikephil/charting/components/Legend;->getForm()Lcom/github/mikephil/charting/components/Legend$LegendForm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend$LegendForm;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 415
    :pswitch_0
    add-float v0, p2, v7

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p3, v7, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 418
    :pswitch_1
    sub-float v2, p3, v7

    add-float v3, p2, v6

    add-float v4, p3, v7

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 421
    :pswitch_2
    add-float v3, p2, v6

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 413
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected drawLabel(Landroid/graphics/Canvas;FFLjava/lang/String;)V
    .locals 1
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "label"    # Ljava/lang/String;

    .prologue
    .line 435
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p2, p3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 436
    return-void
.end method

.method public getFormPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getLabelPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public renderLegend(Landroid/graphics/Canvas;)V
    .locals 40
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v35

    .line 183
    .local v35, "tf":Landroid/graphics/Typeface;
    if-eqz v35, :cond_2

    .line 184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 186
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->getTextSize()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->getTextColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lcom/github/mikephil/charting/utils/Utils;->getLineHeight(Landroid/graphics/Paint;)F

    move-result v26

    .line 190
    .local v26, "labelLineHeight":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lcom/github/mikephil/charting/utils/Utils;->getLineSpacing(Landroid/graphics/Paint;)F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->getYEntrySpace()F

    move-result v3

    add-float v27, v2, v3

    .line 191
    .local v27, "labelLineSpacing":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    const-string v3, "ABC"

    invoke-static {v2, v3}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v23, v26, v2

    .line 193
    .local v23, "formYOffset":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getLabels()[Ljava/lang/String;

    move-result-object v28

    .line 194
    .local v28, "labels":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getColors()[I

    move-result-object v16

    .line 196
    .local v16, "colors":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getFormToTextSpace()F

    move-result v22

    .line 197
    .local v22, "formToTextSpace":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getXEntrySpace()F

    move-result v37

    .line 198
    .local v37, "xEntrySpace":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getDirection()Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    move-result-object v19

    .line 199
    .local v19, "direction":Lcom/github/mikephil/charting/components/Legend$LegendDirection;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getFormSize()F

    move-result v21

    .line 202
    .local v21, "formSize":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getStackSpace()F

    move-result v34

    .line 206
    .local v34, "stackSpace":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getYOffset()F

    move-result v39

    .line 207
    .local v39, "yoffset":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getXOffset()F

    move-result v38

    .line 209
    .local v38, "xoffset":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getPosition()Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-result-object v29

    .line 211
    .local v29, "legendPosition":Lcom/github/mikephil/charting/components/Legend$LegendPosition;
    sget-object v2, Lcom/github/mikephil/charting/renderer/LegendRenderer$1;->$SwitchMap$com$github$mikephil$charting$components$Legend$LegendPosition:[I

    invoke-virtual/range {v29 .. v29}, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 218
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentWidth()F

    move-result v17

    .line 222
    .local v17, "contentWidth":F
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->BELOW_CHART_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v29

    if-eq v0, v2, :cond_3

    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->ABOVE_CHART_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v29

    if-ne v0, v2, :cond_d

    .line 224
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v2

    add-float v31, v2, v38

    .line 226
    .local v31, "originPosX":F
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->RIGHT_TO_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    move-object/from16 v0, v19

    if-ne v0, v2, :cond_4

    .line 227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v2, v2, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    add-float v31, v31, v2

    .line 237
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getCalculatedLineSizes()[Lcom/github/mikephil/charting/utils/FSize;

    move-result-object v15

    .line 238
    .local v15, "calculatedLineSizes":[Lcom/github/mikephil/charting/utils/FSize;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getCalculatedLabelSizes()[Lcom/github/mikephil/charting/utils/FSize;

    move-result-object v14

    .line 239
    .local v14, "calculatedLabelSizes":[Lcom/github/mikephil/charting/utils/FSize;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getCalculatedLabelBreakPoints()[Ljava/lang/Boolean;

    move-result-object v13

    .line 241
    .local v13, "calculatedLabelBreakPoints":[Ljava/lang/Boolean;
    move/from16 v4, v31

    .line 243
    .local v4, "posX":F
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->ABOVE_CHART_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v29

    if-eq v0, v2, :cond_5

    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->ABOVE_CHART_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v29

    if-eq v0, v2, :cond_5

    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->ABOVE_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v29

    if-ne v0, v2, :cond_10

    .line 246
    :cond_5
    const/16 v32, 0x0

    .line 251
    .local v32, "posY":F
    :goto_2
    const/16 v30, 0x0

    .line 253
    .local v30, "lineIndex":I
    const/4 v6, 0x0

    .local v6, "i":I
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v18, v0

    .local v18, "count":I
    :goto_3
    move/from16 v0, v18

    if-ge v6, v0, :cond_0

    .line 254
    array-length v2, v13

    if-ge v6, v2, :cond_6

    aget-object v2, v13, v6

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 255
    move/from16 v4, v31

    .line 256
    add-float v2, v26, v27

    add-float v32, v32, v2

    .line 259
    :cond_6
    cmpl-float v2, v4, v31

    if-nez v2, :cond_7

    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->BELOW_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v29

    if-ne v0, v2, :cond_7

    array-length v2, v15

    move/from16 v0, v30

    if-ge v0, v2, :cond_7

    .line 260
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->RIGHT_TO_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    move-object/from16 v0, v19

    if-ne v0, v2, :cond_11

    aget-object v2, v15, v30

    iget v2, v2, Lcom/github/mikephil/charting/utils/FSize;->width:F

    :goto_4
    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v4, v2

    .line 261
    add-int/lit8 v30, v30, 0x1

    .line 264
    :cond_7
    aget v2, v16, v6

    const/4 v3, -0x2

    if-eq v2, v3, :cond_12

    const/16 v20, 0x1

    .line 265
    .local v20, "drawingForm":Z
    :goto_5
    aget-object v2, v28, v6

    if-nez v2, :cond_13

    const/16 v25, 0x1

    .line 267
    .local v25, "isStacked":Z
    :goto_6
    if-eqz v20, :cond_9

    .line 268
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->RIGHT_TO_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    move-object/from16 v0, v19

    if-ne v0, v2, :cond_8

    .line 269
    sub-float v4, v4, v21

    .line 271
    :cond_8
    add-float v5, v32, v23

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/github/mikephil/charting/renderer/LegendRenderer;->drawForm(Landroid/graphics/Canvas;FFILcom/github/mikephil/charting/components/Legend;)V

    .line 273
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->LEFT_TO_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    move-object/from16 v0, v19

    if-ne v0, v2, :cond_9

    .line 274
    add-float v4, v4, v21

    .line 277
    :cond_9
    if-nez v25, :cond_16

    .line 278
    if-eqz v20, :cond_a

    .line 279
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->RIGHT_TO_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    move-object/from16 v0, v19

    if-ne v0, v2, :cond_14

    move/from16 v0, v22

    neg-float v2, v0

    :goto_7
    add-float/2addr v4, v2

    .line 281
    :cond_a
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->RIGHT_TO_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    move-object/from16 v0, v19

    if-ne v0, v2, :cond_b

    .line 282
    aget-object v2, v14, v6

    iget v2, v2, Lcom/github/mikephil/charting/utils/FSize;->width:F

    sub-float/2addr v4, v2

    .line 284
    :cond_b
    add-float v2, v32, v26

    aget-object v3, v28, v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/github/mikephil/charting/renderer/LegendRenderer;->drawLabel(Landroid/graphics/Canvas;FFLjava/lang/String;)V

    .line 286
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->LEFT_TO_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    move-object/from16 v0, v19

    if-ne v0, v2, :cond_c

    .line 287
    aget-object v2, v14, v6

    iget v2, v2, Lcom/github/mikephil/charting/utils/FSize;->width:F

    add-float/2addr v4, v2

    .line 289
    :cond_c
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->RIGHT_TO_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    move-object/from16 v0, v19

    if-ne v0, v2, :cond_15

    move/from16 v0, v37

    neg-float v2, v0

    :goto_8
    add-float/2addr v4, v2

    .line 253
    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 228
    .end local v4    # "posX":F
    .end local v6    # "i":I
    .end local v13    # "calculatedLabelBreakPoints":[Ljava/lang/Boolean;
    .end local v14    # "calculatedLabelSizes":[Lcom/github/mikephil/charting/utils/FSize;
    .end local v15    # "calculatedLineSizes":[Lcom/github/mikephil/charting/utils/FSize;
    .end local v18    # "count":I
    .end local v20    # "drawingForm":Z
    .end local v25    # "isStacked":Z
    .end local v30    # "lineIndex":I
    .end local v31    # "originPosX":F
    .end local v32    # "posY":F
    :cond_d
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->BELOW_CHART_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v29

    if-eq v0, v2, :cond_e

    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->ABOVE_CHART_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v29

    if-ne v0, v2, :cond_f

    .line 230
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v2

    sub-float v31, v2, v38

    .line 232
    .restart local v31    # "originPosX":F
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->LEFT_TO_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    move-object/from16 v0, v19

    if-ne v0, v2, :cond_4

    .line 233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v2, v2, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    sub-float v31, v31, v2

    goto/16 :goto_1

    .line 235
    .end local v31    # "originPosX":F
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v17, v3

    add-float v31, v2, v3

    .restart local v31    # "originPosX":F
    goto/16 :goto_1

    .line 248
    .restart local v4    # "posX":F
    .restart local v13    # "calculatedLabelBreakPoints":[Ljava/lang/Boolean;
    .restart local v14    # "calculatedLabelSizes":[Lcom/github/mikephil/charting/utils/FSize;
    .restart local v15    # "calculatedLineSizes":[Lcom/github/mikephil/charting/utils/FSize;
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartHeight()F

    move-result v2

    sub-float v2, v2, v39

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v3, v3, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    sub-float v32, v2, v3

    .restart local v32    # "posY":F
    goto/16 :goto_2

    .line 260
    .restart local v6    # "i":I
    .restart local v18    # "count":I
    .restart local v30    # "lineIndex":I
    :cond_11
    aget-object v2, v15, v30

    iget v2, v2, Lcom/github/mikephil/charting/utils/FSize;->width:F

    neg-float v2, v2

    goto/16 :goto_4

    .line 264
    :cond_12
    const/16 v20, 0x0

    goto/16 :goto_5

    .line 265
    .restart local v20    # "drawingForm":Z
    :cond_13
    const/16 v25, 0x0

    goto/16 :goto_6

    .restart local v25    # "isStacked":Z
    :cond_14
    move/from16 v2, v22

    .line 279
    goto/16 :goto_7

    :cond_15
    move/from16 v2, v37

    .line 289
    goto :goto_8

    .line 291
    :cond_16
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->RIGHT_TO_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    move-object/from16 v0, v19

    if-ne v0, v2, :cond_17

    move/from16 v0, v34

    neg-float v2, v0

    :goto_a
    add-float/2addr v4, v2

    goto :goto_9

    :cond_17
    move/from16 v2, v34

    goto :goto_a

    .line 305
    .end local v4    # "posX":F
    .end local v6    # "i":I
    .end local v13    # "calculatedLabelBreakPoints":[Ljava/lang/Boolean;
    .end local v14    # "calculatedLabelSizes":[Lcom/github/mikephil/charting/utils/FSize;
    .end local v15    # "calculatedLineSizes":[Lcom/github/mikephil/charting/utils/FSize;
    .end local v17    # "contentWidth":F
    .end local v18    # "count":I
    .end local v20    # "drawingForm":Z
    .end local v25    # "isStacked":Z
    .end local v30    # "lineIndex":I
    .end local v31    # "originPosX":F
    .end local v32    # "posY":F
    :pswitch_1
    const/16 v33, 0x0

    .line 306
    .local v33, "stack":F
    const/16 v36, 0x0

    .line 308
    .local v36, "wasStacked":Z
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->PIECHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v29

    if-ne v0, v2, :cond_1c

    .line 309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartWidth()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v2, v3

    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->LEFT_TO_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    move-object/from16 v0, v19

    if-ne v0, v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v2, v2, Lcom/github/mikephil/charting/components/Legend;->mTextWidthMax:F

    neg-float v2, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    :goto_b
    add-float v4, v3, v2

    .line 312
    .restart local v4    # "posX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartHeight()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v3, v3, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 313
    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->getYOffset()F

    move-result v3

    add-float v32, v2, v3

    .line 346
    .restart local v32    # "posY":F
    :goto_c
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_d
    move-object/from16 v0, v28

    array-length v2, v0

    if-ge v6, v2, :cond_0

    .line 348
    aget v2, v16, v6

    const/4 v3, -0x2

    if-eq v2, v3, :cond_25

    const/4 v2, 0x1

    :goto_e
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    .line 349
    .local v20, "drawingForm":Ljava/lang/Boolean;
    move v9, v4

    .line 351
    .local v9, "x":F
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 352
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->LEFT_TO_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    move-object/from16 v0, v19

    if-ne v0, v2, :cond_26

    .line 353
    add-float v9, v9, v33

    .line 357
    :goto_f
    add-float v10, v32, v23

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move v11, v6

    invoke-virtual/range {v7 .. v12}, Lcom/github/mikephil/charting/renderer/LegendRenderer;->drawForm(Landroid/graphics/Canvas;FFILcom/github/mikephil/charting/components/Legend;)V

    .line 359
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->LEFT_TO_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    move-object/from16 v0, v19

    if-ne v0, v2, :cond_18

    .line 360
    add-float v9, v9, v21

    .line 363
    :cond_18
    aget-object v2, v28, v6

    if-eqz v2, :cond_2a

    .line 365
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_28

    if-nez v36, :cond_28

    .line 366
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->LEFT_TO_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    move-object/from16 v0, v19

    if-ne v0, v2, :cond_27

    move/from16 v2, v22

    :goto_10
    add-float/2addr v9, v2

    .line 371
    :cond_19
    :goto_11
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->RIGHT_TO_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    move-object/from16 v0, v19

    if-ne v0, v2, :cond_1a

    .line 372
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    aget-object v3, v28, v6

    invoke-static {v2, v3}, Lcom/github/mikephil/charting/utils/Utils;->calcTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v9, v2

    .line 374
    :cond_1a
    if-nez v36, :cond_29

    .line 375
    add-float v2, v32, v26

    aget-object v3, v28, v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9, v2, v3}, Lcom/github/mikephil/charting/renderer/LegendRenderer;->drawLabel(Landroid/graphics/Canvas;FFLjava/lang/String;)V

    .line 382
    :goto_12
    add-float v2, v26, v27

    add-float v32, v32, v2

    .line 383
    const/16 v33, 0x0

    .line 346
    :goto_13
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    .line 309
    .end local v4    # "posX":F
    .end local v6    # "i":I
    .end local v9    # "x":F
    .end local v20    # "drawingForm":Ljava/lang/Boolean;
    .end local v32    # "posY":F
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v2, v2, Lcom/github/mikephil/charting/components/Legend;->mTextWidthMax:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    goto/16 :goto_b

    .line 315
    :cond_1c
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->RIGHT_OF_CHART:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v29

    if-eq v0, v2, :cond_1d

    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->RIGHT_OF_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v29

    if-eq v0, v2, :cond_1d

    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->RIGHT_OF_CHART_INSIDE:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v29

    if-ne v0, v2, :cond_20

    :cond_1d
    const/16 v24, 0x1

    .line 320
    .local v24, "isRightAligned":Z
    :goto_14
    if-eqz v24, :cond_21

    .line 321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartWidth()F

    move-result v2

    sub-float v4, v2, v38

    .line 322
    .restart local v4    # "posX":F
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->LEFT_TO_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    move-object/from16 v0, v19

    if-ne v0, v2, :cond_1e

    .line 323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v2, v2, Lcom/github/mikephil/charting/components/Legend;->mTextWidthMax:F

    sub-float/2addr v4, v2

    .line 330
    :cond_1e
    :goto_15
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->RIGHT_OF_CHART:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v29

    if-eq v0, v2, :cond_1f

    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->LEFT_OF_CHART:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v29

    if-ne v0, v2, :cond_22

    .line 332
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v2

    add-float v32, v2, v39

    .restart local v32    # "posY":F
    goto/16 :goto_c

    .line 315
    .end local v4    # "posX":F
    .end local v24    # "isRightAligned":Z
    .end local v32    # "posY":F
    :cond_20
    const/16 v24, 0x0

    goto :goto_14

    .line 325
    .restart local v24    # "isRightAligned":Z
    :cond_21
    move/from16 v4, v38

    .line 326
    .restart local v4    # "posX":F
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->RIGHT_TO_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    move-object/from16 v0, v19

    if-ne v0, v2, :cond_1e

    .line 327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v2, v2, Lcom/github/mikephil/charting/components/Legend;->mTextWidthMax:F

    add-float/2addr v4, v2

    goto :goto_15

    .line 333
    :cond_22
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->RIGHT_OF_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v29

    if-eq v0, v2, :cond_23

    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->LEFT_OF_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v29

    if-ne v0, v2, :cond_24

    .line 335
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartHeight()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v3, v3, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    sub-float v32, v2, v3

    .restart local v32    # "posY":F
    goto/16 :goto_c

    .line 342
    .end local v32    # "posY":F
    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v2

    add-float v32, v2, v39

    .restart local v32    # "posY":F
    goto/16 :goto_c

    .line 348
    .end local v24    # "isRightAligned":Z
    .restart local v6    # "i":I
    :cond_25
    const/4 v2, 0x0

    goto/16 :goto_e

    .line 355
    .restart local v9    # "x":F
    .restart local v20    # "drawingForm":Ljava/lang/Boolean;
    :cond_26
    sub-float v2, v21, v33

    sub-float/2addr v9, v2

    goto/16 :goto_f

    .line 366
    :cond_27
    move/from16 v0, v22

    neg-float v2, v0

    goto/16 :goto_10

    .line 368
    :cond_28
    if-eqz v36, :cond_19

    .line 369
    move v9, v4

    goto/16 :goto_11

    .line 377
    :cond_29
    add-float v2, v26, v27

    add-float v32, v32, v2

    .line 378
    add-float v2, v32, v26

    aget-object v3, v28, v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9, v2, v3}, Lcom/github/mikephil/charting/renderer/LegendRenderer;->drawLabel(Landroid/graphics/Canvas;FFLjava/lang/String;)V

    goto/16 :goto_12

    .line 385
    :cond_2a
    add-float v2, v21, v34

    add-float v33, v33, v2

    .line 386
    const/16 v36, 0x1

    goto/16 :goto_13

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
