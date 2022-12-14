.class public Lcom/github/mikephil/charting/charts/BarChart;
.super Lcom/github/mikephil/charting/charts/BarLineChartBase;
.source "BarChart.java"

# interfaces
.implements Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/charts/BarLineChartBase",
        "<",
        "Lcom/github/mikephil/charting/data/BarData;",
        ">;",
        "Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;"
    }
.end annotation


# instance fields
.field private mDrawBarShadow:Z

.field private mDrawHighlightArrow:Z

.field private mDrawValueAboveBar:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;-><init>(Landroid/content/Context;)V

    .line 26
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDrawHighlightArrow:Z

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDrawValueAboveBar:Z

    .line 41
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDrawBarShadow:Z

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDrawHighlightArrow:Z

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDrawValueAboveBar:Z

    .line 41
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDrawBarShadow:Z

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDrawHighlightArrow:Z

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDrawValueAboveBar:Z

    .line 41
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDrawBarShadow:Z

    .line 53
    return-void
.end method


# virtual methods
.method protected calcMinMax()V
    .locals 3

    .prologue
    .line 69
    invoke-super {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->calcMinMax()V

    .line 72
    iget v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDeltaX:F

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    iput v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDeltaX:F

    .line 75
    iget v2, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDeltaX:F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v1, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDeltaX:F

    .line 77
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v1, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BarData;->getGroupSpace()F

    move-result v0

    .line 78
    .local v0, "groupSpace":F
    iget v2, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDeltaX:F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v1, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BarData;->getXValCount()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    iput v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDeltaX:F

    .line 79
    iget v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDeltaX:F

    iget v2, p0, Lcom/github/mikephil/charting/charts/BarChart;->mXChartMin:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mXChartMax:F

    .line 80
    return-void
.end method

.method public getBarBounds(Lcom/github/mikephil/charting/data/BarEntry;)Landroid/graphics/RectF;
    .locals 12
    .param p1, "e"    # Lcom/github/mikephil/charting/data/BarEntry;

    .prologue
    const/4 v2, 0x0

    .line 109
    iget-object v11, p0, Lcom/github/mikephil/charting/charts/BarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v11, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v11, p1}, Lcom/github/mikephil/charting/data/BarData;->getDataSetForEntry(Lcom/github/mikephil/charting/data/Entry;)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    .line 111
    .local v6, "set":Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    if-nez v6, :cond_0

    .line 112
    const/4 v3, 0x0

    .line 130
    :goto_0
    return-object v3

    .line 114
    :cond_0
    invoke-interface {v6}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getBarSpace()F

    move-result v1

    .line 115
    .local v1, "barspace":F
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BarEntry;->getVal()F

    move-result v10

    .line 116
    .local v10, "y":F
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BarEntry;->getXIndex()I

    move-result v11

    int-to-float v9, v11

    .line 118
    .local v9, "x":F
    const/high16 v0, 0x3f000000    # 0.5f

    .line 120
    .local v0, "barWidth":F
    const/high16 v11, 0x40000000    # 2.0f

    div-float v7, v1, v11

    .line 121
    .local v7, "spaceHalf":F
    sub-float v11, v9, v0

    add-float v4, v11, v7

    .line 122
    .local v4, "left":F
    add-float v11, v9, v0

    sub-float v5, v11, v7

    .line 123
    .local v5, "right":F
    cmpl-float v11, v10, v2

    if-ltz v11, :cond_2

    move v8, v10

    .line 124
    .local v8, "top":F
    :goto_1
    cmpg-float v11, v10, v2

    if-gtz v11, :cond_1

    move v2, v10

    .line 126
    .local v2, "bottom":F
    :cond_1
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v4, v8, v5, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 128
    .local v3, "bounds":Landroid/graphics/RectF;
    invoke-interface {v6}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/github/mikephil/charting/charts/BarChart;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v11

    invoke-virtual {v11, v3}, Lcom/github/mikephil/charting/utils/Transformer;->rectValueToPixel(Landroid/graphics/RectF;)V

    goto :goto_0

    .end local v2    # "bottom":F
    .end local v3    # "bounds":Landroid/graphics/RectF;
    .end local v8    # "top":F
    :cond_2
    move v8, v2

    .line 123
    goto :goto_1
.end method

.method public getBarData()Lcom/github/mikephil/charting/data/BarData;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v0, Lcom/github/mikephil/charting/data/BarData;

    return-object v0
.end method

.method public getHighestVisibleXIndex()I
    .locals 6

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 237
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v3, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v3

    int-to-float v2, v3

    .line 238
    .local v2, "step":F
    cmpg-float v3, v2, v0

    if-gtz v3, :cond_0

    .line 240
    .local v0, "div":F
    :goto_0
    const/4 v3, 0x2

    new-array v1, v3, [F

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v3

    aput v3, v1, v5

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v4

    aput v4, v1, v3

    .line 242
    .local v1, "pts":[F
    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {p0, v3}, Lcom/github/mikephil/charting/charts/BarChart;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/github/mikephil/charting/utils/Transformer;->pixelsToValue([F)V

    .line 243
    aget v3, v1, v5

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarChart;->getXChartMax()F

    move-result v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarChart;->getXChartMax()F

    move-result v3

    div-float/2addr v3, v0

    :goto_1
    float-to-int v3, v3

    return v3

    .line 238
    .end local v0    # "div":F
    .end local v1    # "pts":[F
    :cond_0
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v3, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BarData;->getGroupSpace()F

    move-result v3

    add-float v0, v2, v3

    goto :goto_0

    .line 243
    .restart local v0    # "div":F
    .restart local v1    # "pts":[F
    :cond_1
    aget v3, v1, v5

    div-float/2addr v3, v0

    goto :goto_1
.end method

.method public getHighlightByTouchPoint(FF)Lcom/github/mikephil/charting/highlight/Highlight;
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 93
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    if-nez v0, :cond_0

    .line 94
    const-string v0, "MPAndroidChart"

    const-string v1, "Can\'t select by touch. No data set."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v0, 0x0

    .line 97
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarChart;->getHighlighter()Lcom/github/mikephil/charting/highlight/ChartHighlighter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/github/mikephil/charting/highlight/ChartHighlighter;->getHighlight(FF)Lcom/github/mikephil/charting/highlight/Highlight;

    move-result-object v0

    goto :goto_0
.end method

.method public getLowestVisibleXIndex()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 220
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v3, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v3

    int-to-float v2, v3

    .line 221
    .local v2, "step":F
    cmpg-float v3, v2, v4

    if-gtz v3, :cond_0

    move v0, v4

    .line 223
    .local v0, "div":F
    :goto_0
    const/4 v3, 0x2

    new-array v1, v3, [F

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v3

    aput v3, v1, v6

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/BarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v5

    aput v5, v1, v3

    .line 225
    .local v1, "pts":[F
    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {p0, v3}, Lcom/github/mikephil/charting/charts/BarChart;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/github/mikephil/charting/utils/Transformer;->pixelsToValue([F)V

    .line 226
    aget v3, v1, v6

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarChart;->getXChartMin()F

    move-result v5

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_1

    const/4 v3, 0x0

    :goto_1
    float-to-int v3, v3

    return v3

    .line 221
    .end local v0    # "div":F
    .end local v1    # "pts":[F
    :cond_0
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v3, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BarData;->getGroupSpace()F

    move-result v3

    add-float v0, v2, v3

    goto :goto_0

    .line 226
    .restart local v0    # "div":F
    .restart local v1    # "pts":[F
    :cond_1
    aget v3, v1, v6

    div-float/2addr v3, v0

    add-float/2addr v3, v4

    goto :goto_1
.end method

.method protected init()V
    .locals 4

    .prologue
    .line 57
    invoke-super {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->init()V

    .line 59
    new-instance v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-direct {v0, p0, v1, v2}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;-><init>(Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    .line 60
    new-instance v0, Lcom/github/mikephil/charting/renderer/XAxisRendererBarChart;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarChart;->mLeftAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/github/mikephil/charting/renderer/XAxisRendererBarChart;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;Lcom/github/mikephil/charting/charts/BarChart;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    .line 62
    new-instance v0, Lcom/github/mikephil/charting/highlight/BarHighlighter;

    invoke-direct {v0, p0}, Lcom/github/mikephil/charting/highlight/BarHighlighter;-><init>(Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;)V

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/BarChart;->setHighlighter(Lcom/github/mikephil/charting/highlight/ChartHighlighter;)V

    .line 64
    const/high16 v0, -0x41000000    # -0.5f

    iput v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->mXChartMin:F

    .line 65
    return-void
.end method

.method public isDrawBarShadowEnabled()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDrawBarShadow:Z

    return v0
.end method

.method public isDrawHighlightArrowEnabled()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDrawHighlightArrow:Z

    return v0
.end method

.method public isDrawValueAboveBarEnabled()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDrawValueAboveBar:Z

    return v0
.end method

.method public setDrawBarShadow(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 195
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDrawBarShadow:Z

    .line 196
    return-void
.end method

.method public setDrawHighlightArrow(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDrawHighlightArrow:Z

    .line 140
    return-void
.end method

.method public setDrawValueAboveBar(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDrawValueAboveBar:Z

    .line 158
    return-void
.end method
