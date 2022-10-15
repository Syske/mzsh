.class public abstract Lcom/github/mikephil/charting/charts/Chart;
.super Landroid/view/ViewGroup;
.source "Chart.java"

# interfaces
.implements Lcom/github/mikephil/charting/interfaces/dataprovider/ChartInterface;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/github/mikephil/charting/data/ChartData",
        "<+",
        "Lcom/github/mikephil/charting/interfaces/datasets/IDataSet",
        "<+",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">;>;>",
        "Landroid/view/ViewGroup;",
        "Lcom/github/mikephil/charting/interfaces/dataprovider/ChartInterface;"
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "MPAndroidChart"

.field public static final PAINT_CENTER_TEXT:I = 0xe

.field public static final PAINT_DESCRIPTION:I = 0xb

.field public static final PAINT_GRID_BACKGROUND:I = 0x4

.field public static final PAINT_HOLE:I = 0xd

.field public static final PAINT_INFO:I = 0x7

.field public static final PAINT_LEGEND_LABEL:I = 0x12


# instance fields
.field protected mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

.field protected mChartTouchListener:Lcom/github/mikephil/charting/listener/ChartTouchListener;

.field protected mData:Lcom/github/mikephil/charting/data/ChartData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected mDefaultFormatter:Lcom/github/mikephil/charting/formatter/ValueFormatter;

.field protected mDeltaX:F

.field protected mDescPaint:Landroid/graphics/Paint;

.field protected mDescription:Ljava/lang/String;

.field private mDescriptionPosition:Landroid/graphics/PointF;

.field private mDragDecelerationEnabled:Z

.field private mDragDecelerationFrictionCoef:F

.field protected mDrawMarkerViews:Z

.field protected mDrawPaint:Landroid/graphics/Paint;

.field private mExtraBottomOffset:F

.field private mExtraLeftOffset:F

.field private mExtraRightOffset:F

.field private mExtraTopOffset:F

.field private mGestureListener:Lcom/github/mikephil/charting/listener/OnChartGestureListener;

.field protected mHighLightPerTapEnabled:Z

.field protected mHighlighter:Lcom/github/mikephil/charting/highlight/ChartHighlighter;

.field protected mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

.field protected mInfoPaint:Landroid/graphics/Paint;

.field protected mJobs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected mLegend:Lcom/github/mikephil/charting/components/Legend;

.field protected mLegendRenderer:Lcom/github/mikephil/charting/renderer/LegendRenderer;

.field protected mLogEnabled:Z

.field protected mMarkerView:Lcom/github/mikephil/charting/components/MarkerView;

.field private mNoDataText:Ljava/lang/String;

.field private mNoDataTextDescription:Ljava/lang/String;

.field private mOffsetsCalculated:Z

.field protected mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

.field protected mSelectionListener:Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;

.field protected mTouchEnabled:Z

.field protected mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

.field protected mXChartMax:F

.field protected mXChartMin:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 191
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 71
    iput-boolean v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mLogEnabled:Z

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 82
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mHighLightPerTapEnabled:Z

    .line 87
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mDragDecelerationEnabled:Z

    .line 95
    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDragDecelerationFrictionCoef:F

    .line 117
    const-string v0, "Description"

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescription:Ljava/lang/String;

    .line 122
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDeltaX:F

    .line 124
    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mXChartMin:F

    .line 125
    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mXChartMax:F

    .line 130
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mTouchEnabled:Z

    .line 147
    const-string v0, "No chart data available."

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mNoDataText:Ljava/lang/String;

    .line 182
    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraTopOffset:F

    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraRightOffset:F

    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraBottomOffset:F

    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraLeftOffset:F

    .line 405
    iput-boolean v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mOffsetsCalculated:Z

    .line 648
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mDrawMarkerViews:Z

    .line 1631
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mJobs:Ljava/util/ArrayList;

    .line 192
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->init()V

    .line 193
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 199
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    iput-boolean v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mLogEnabled:Z

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 82
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mHighLightPerTapEnabled:Z

    .line 87
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mDragDecelerationEnabled:Z

    .line 95
    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDragDecelerationFrictionCoef:F

    .line 117
    const-string v0, "Description"

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescription:Ljava/lang/String;

    .line 122
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDeltaX:F

    .line 124
    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mXChartMin:F

    .line 125
    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mXChartMax:F

    .line 130
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mTouchEnabled:Z

    .line 147
    const-string v0, "No chart data available."

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mNoDataText:Ljava/lang/String;

    .line 182
    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraTopOffset:F

    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraRightOffset:F

    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraBottomOffset:F

    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraLeftOffset:F

    .line 405
    iput-boolean v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mOffsetsCalculated:Z

    .line 648
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mDrawMarkerViews:Z

    .line 1631
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mJobs:Ljava/util/ArrayList;

    .line 200
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->init()V

    .line 201
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 207
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    iput-boolean v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mLogEnabled:Z

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 82
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mHighLightPerTapEnabled:Z

    .line 87
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mDragDecelerationEnabled:Z

    .line 95
    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDragDecelerationFrictionCoef:F

    .line 117
    const-string v0, "Description"

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescription:Ljava/lang/String;

    .line 122
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDeltaX:F

    .line 124
    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mXChartMin:F

    .line 125
    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mXChartMax:F

    .line 130
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mTouchEnabled:Z

    .line 147
    const-string v0, "No chart data available."

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mNoDataText:Ljava/lang/String;

    .line 182
    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraTopOffset:F

    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraRightOffset:F

    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraBottomOffset:F

    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraLeftOffset:F

    .line 405
    iput-boolean v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mOffsetsCalculated:Z

    .line 648
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mDrawMarkerViews:Z

    .line 1631
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mJobs:Ljava/util/ArrayList;

    .line 208
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->init()V

    .line 209
    return-void
.end method


# virtual methods
.method public addJob(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "job"    # Ljava/lang/Runnable;

    .prologue
    .line 1640
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mJobs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1641
    return-void
.end method

.method public animateX(I)V
    .locals 1
    .param p1, "durationMillis"    # I

    .prologue
    .line 889
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/animation/ChartAnimator;->animateX(I)V

    .line 890
    return-void
.end method

.method public animateX(ILcom/github/mikephil/charting/animation/Easing$EasingOption;)V
    .locals 1
    .param p1, "durationMillis"    # I
    .param p2, "easing"    # Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    .prologue
    .line 858
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->animateX(ILcom/github/mikephil/charting/animation/Easing$EasingOption;)V

    .line 859
    return-void
.end method

.method public animateX(ILcom/github/mikephil/charting/animation/EasingFunction;)V
    .locals 1
    .param p1, "durationMillis"    # I
    .param p2, "easing"    # Lcom/github/mikephil/charting/animation/EasingFunction;

    .prologue
    .line 810
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->animateX(ILcom/github/mikephil/charting/animation/EasingFunction;)V

    .line 811
    return-void
.end method

.method public animateXY(II)V
    .locals 1
    .param p1, "durationMillisX"    # I
    .param p2, "durationMillisY"    # I

    .prologue
    .line 914
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->animateXY(II)V

    .line 915
    return-void
.end method

.method public animateXY(IILcom/github/mikephil/charting/animation/Easing$EasingOption;Lcom/github/mikephil/charting/animation/Easing$EasingOption;)V
    .locals 1
    .param p1, "durationMillisX"    # I
    .param p2, "durationMillisY"    # I
    .param p3, "easingX"    # Lcom/github/mikephil/charting/animation/Easing$EasingOption;
    .param p4, "easingY"    # Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    .prologue
    .line 845
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/github/mikephil/charting/animation/ChartAnimator;->animateXY(IILcom/github/mikephil/charting/animation/Easing$EasingOption;Lcom/github/mikephil/charting/animation/Easing$EasingOption;)V

    .line 846
    return-void
.end method

.method public animateXY(IILcom/github/mikephil/charting/animation/EasingFunction;Lcom/github/mikephil/charting/animation/EasingFunction;)V
    .locals 1
    .param p1, "durationMillisX"    # I
    .param p2, "durationMillisY"    # I
    .param p3, "easingX"    # Lcom/github/mikephil/charting/animation/EasingFunction;
    .param p4, "easingY"    # Lcom/github/mikephil/charting/animation/EasingFunction;

    .prologue
    .line 797
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/github/mikephil/charting/animation/ChartAnimator;->animateXY(IILcom/github/mikephil/charting/animation/EasingFunction;Lcom/github/mikephil/charting/animation/EasingFunction;)V

    .line 798
    return-void
.end method

.method public animateY(I)V
    .locals 1
    .param p1, "durationMillis"    # I

    .prologue
    .line 901
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/animation/ChartAnimator;->animateY(I)V

    .line 902
    return-void
.end method

.method public animateY(ILcom/github/mikephil/charting/animation/Easing$EasingOption;)V
    .locals 1
    .param p1, "durationMillis"    # I
    .param p2, "easing"    # Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    .prologue
    .line 871
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->animateY(ILcom/github/mikephil/charting/animation/Easing$EasingOption;)V

    .line 872
    return-void
.end method

.method public animateY(ILcom/github/mikephil/charting/animation/EasingFunction;)V
    .locals 1
    .param p1, "durationMillis"    # I
    .param p2, "easing"    # Lcom/github/mikephil/charting/animation/EasingFunction;

    .prologue
    .line 823
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->animateY(ILcom/github/mikephil/charting/animation/EasingFunction;)V

    .line 824
    return-void
.end method

.method protected abstract calcMinMax()V
.end method

.method protected calculateFormatter(FF)V
    .locals 4
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 389
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    const/4 v1, 0x0

    .line 391
    .local v1, "reference":F
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/ChartData;->getXValCount()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 393
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 398
    :goto_0
    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->getDecimals(F)I

    move-result v0

    .line 399
    .local v0, "digits":I
    new-instance v2, Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;

    invoke-direct {v2, v0}, Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;-><init>(I)V

    iput-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mDefaultFormatter:Lcom/github/mikephil/charting/formatter/ValueFormatter;

    .line 400
    return-void

    .line 395
    .end local v0    # "digits":I
    :cond_1
    sub-float v2, p2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    goto :goto_0
.end method

.method protected abstract calculateOffsets()V
.end method

.method public clear()V
    .locals 1

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    const/4 v0, 0x0

    .line 330
    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 331
    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    .line 332
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->invalidate()V

    .line 333
    return-void
.end method

.method public clearAllJobs()V
    .locals 1

    .prologue
    .line 1648
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mJobs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1649
    return-void
.end method

.method public clearValues()V
    .locals 1

    .prologue
    .line 340
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->clearValues()V

    .line 341
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->invalidate()V

    .line 342
    return-void
.end method

.method public disableScroll()V
    .locals 2

    .prologue
    .line 1273
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1274
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 1275
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1276
    :cond_0
    return-void
.end method

.method protected drawDescription(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    const/high16 v4, 0x41200000    # 10.0f

    .line 453
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescription:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescriptionPosition:Landroid/graphics/PointF;

    if-nez v0, :cond_1

    .line 457
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescription:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetRight()F

    move-result v2

    sub-float/2addr v1, v2

    sub-float/2addr v1, v4

    .line 458
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetBottom()F

    move-result v3

    sub-float/2addr v2, v3

    sub-float/2addr v2, v4

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescPaint:Landroid/graphics/Paint;

    .line 457
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescription:Ljava/lang/String;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescriptionPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescriptionPosition:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected drawMarkers(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 661
    iget-object v7, p0, Lcom/github/mikephil/charting/charts/Chart;->mMarkerView:Lcom/github/mikephil/charting/components/MarkerView;

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/github/mikephil/charting/charts/Chart;->mDrawMarkerViews:Z

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->valuesToHighlight()Z

    move-result v7

    if-nez v7, :cond_1

    .line 707
    :cond_0
    return-void

    .line 664
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v7, p0, Lcom/github/mikephil/charting/charts/Chart;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    array-length v7, v7

    if-ge v3, v7, :cond_0

    .line 666
    iget-object v7, p0, Lcom/github/mikephil/charting/charts/Chart;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    aget-object v2, v7, v3

    .line 667
    .local v2, "highlight":Lcom/github/mikephil/charting/highlight/Highlight;
    invoke-virtual {v2}, Lcom/github/mikephil/charting/highlight/Highlight;->getXIndex()I

    move-result v5

    .line 668
    .local v5, "xIndex":I
    invoke-virtual {v2}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v0

    .line 670
    .local v0, "dataSetIndex":I
    int-to-float v7, v5

    iget v8, p0, Lcom/github/mikephil/charting/charts/Chart;->mDeltaX:F

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_2

    int-to-float v7, v5

    iget v8, p0, Lcom/github/mikephil/charting/charts/Chart;->mDeltaX:F

    iget-object v9, p0, Lcom/github/mikephil/charting/charts/Chart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v9

    mul-float/2addr v8, v9

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_2

    .line 672
    iget-object v7, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    iget-object v8, p0, Lcom/github/mikephil/charting/charts/Chart;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    aget-object v8, v8, v3

    invoke-virtual {v7, v8}, Lcom/github/mikephil/charting/data/ChartData;->getEntryForHighlight(Lcom/github/mikephil/charting/highlight/Highlight;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v1

    .line 675
    .local v1, "e":Lcom/github/mikephil/charting/data/Entry;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v7

    iget-object v8, p0, Lcom/github/mikephil/charting/charts/Chart;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    aget-object v8, v8, v3

    invoke-virtual {v8}, Lcom/github/mikephil/charting/highlight/Highlight;->getXIndex()I

    move-result v8

    if-eq v7, v8, :cond_3

    .line 664
    .end local v1    # "e":Lcom/github/mikephil/charting/data/Entry;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 678
    .restart local v1    # "e":Lcom/github/mikephil/charting/data/Entry;
    :cond_3
    invoke-virtual {p0, v1, v2}, Lcom/github/mikephil/charting/charts/Chart;->getMarkerPosition(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)[F

    move-result-object v4

    .line 681
    .local v4, "pos":[F
    iget-object v7, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    aget v8, v4, v10

    aget v9, v4, v11

    invoke-virtual {v7, v8, v9}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBounds(FF)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 685
    iget-object v7, p0, Lcom/github/mikephil/charting/charts/Chart;->mMarkerView:Lcom/github/mikephil/charting/components/MarkerView;

    invoke-virtual {v7, v1, v2}, Lcom/github/mikephil/charting/components/MarkerView;->refreshContent(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)V

    .line 694
    iget-object v7, p0, Lcom/github/mikephil/charting/charts/Chart;->mMarkerView:Lcom/github/mikephil/charting/components/MarkerView;

    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 695
    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 694
    invoke-virtual {v7, v8, v9}, Lcom/github/mikephil/charting/components/MarkerView;->measure(II)V

    .line 696
    iget-object v7, p0, Lcom/github/mikephil/charting/charts/Chart;->mMarkerView:Lcom/github/mikephil/charting/components/MarkerView;

    iget-object v8, p0, Lcom/github/mikephil/charting/charts/Chart;->mMarkerView:Lcom/github/mikephil/charting/components/MarkerView;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/components/MarkerView;->getMeasuredWidth()I

    move-result v8

    iget-object v9, p0, Lcom/github/mikephil/charting/charts/Chart;->mMarkerView:Lcom/github/mikephil/charting/components/MarkerView;

    .line 697
    invoke-virtual {v9}, Lcom/github/mikephil/charting/components/MarkerView;->getMeasuredHeight()I

    move-result v9

    .line 696
    invoke-virtual {v7, v10, v10, v8, v9}, Lcom/github/mikephil/charting/components/MarkerView;->layout(IIII)V

    .line 699
    aget v7, v4, v11

    iget-object v8, p0, Lcom/github/mikephil/charting/charts/Chart;->mMarkerView:Lcom/github/mikephil/charting/components/MarkerView;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/components/MarkerView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_4

    .line 700
    iget-object v7, p0, Lcom/github/mikephil/charting/charts/Chart;->mMarkerView:Lcom/github/mikephil/charting/components/MarkerView;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/components/MarkerView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    aget v8, v4, v11

    sub-float v6, v7, v8

    .line 701
    .local v6, "y":F
    iget-object v7, p0, Lcom/github/mikephil/charting/charts/Chart;->mMarkerView:Lcom/github/mikephil/charting/components/MarkerView;

    aget v8, v4, v10

    aget v9, v4, v11

    add-float/2addr v9, v6

    invoke-virtual {v7, p1, v8, v9}, Lcom/github/mikephil/charting/components/MarkerView;->draw(Landroid/graphics/Canvas;FF)V

    goto :goto_1

    .line 703
    .end local v6    # "y":F
    :cond_4
    iget-object v7, p0, Lcom/github/mikephil/charting/charts/Chart;->mMarkerView:Lcom/github/mikephil/charting/components/MarkerView;

    aget v8, v4, v10

    aget v9, v4, v11

    invoke-virtual {v7, p1, v8, v9}, Lcom/github/mikephil/charting/components/MarkerView;->draw(Landroid/graphics/Canvas;FF)V

    goto :goto_1
.end method

.method public enableScroll()V
    .locals 2

    .prologue
    .line 1282
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1283
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 1284
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1285
    :cond_0
    return-void
.end method

.method public getAnimator()Lcom/github/mikephil/charting/animation/ChartAnimator;
    .locals 1

    .prologue
    .line 731
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    return-object v0
.end method

.method public getCenter()Landroid/graphics/PointF;
    .locals 4

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    const/high16 v3, 0x40000000    # 2.0f

    .line 1029
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public getCenterOfView()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 1471
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getCenter()Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public getCenterOffsets()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 1040
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentCenter()Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public getChartBitmap()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 1481
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1483
    .local v2, "returnedBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1485
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1486
    .local v0, "bgDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 1488
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1494
    :goto_0
    invoke-virtual {p0, v1}, Lcom/github/mikephil/charting/charts/Chart;->draw(Landroid/graphics/Canvas;)V

    .line 1496
    return-object v2

    .line 1492
    :cond_0
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0
.end method

.method public getContentRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 1266
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentRect()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lcom/github/mikephil/charting/data/ChartData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1421
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    return-object v0
.end method

.method public getDefaultValueFormatter()Lcom/github/mikephil/charting/formatter/ValueFormatter;
    .locals 1

    .prologue
    .line 929
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDefaultFormatter:Lcom/github/mikephil/charting/formatter/ValueFormatter;

    return-object v0
.end method

.method public getDragDecelerationFrictionCoef()F
    .locals 1

    .prologue
    .line 756
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDragDecelerationFrictionCoef:F

    return v0
.end method

.method public getEntriesAtIndex(I)Ljava/util/List;
    .locals 5
    .param p1, "xIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1399
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1401
    .local v3, "vals":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 1403
    iget-object v4, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v4, v1}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v2

    .line 1405
    .local v2, "set":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    invoke-interface {v2, p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    .line 1407
    .local v0, "e":Lcom/github/mikephil/charting/data/Entry;
    if-eqz v0, :cond_0

    .line 1408
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1401
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1412
    .end local v0    # "e":Lcom/github/mikephil/charting/data/Entry;
    .end local v2    # "set":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    :cond_1
    return-object v3
.end method

.method public getExtraBottomOffset()F
    .locals 1

    .prologue
    .line 1153
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraBottomOffset:F

    return v0
.end method

.method public getExtraLeftOffset()F
    .locals 1

    .prologue
    .line 1167
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraLeftOffset:F

    return v0
.end method

.method public getExtraRightOffset()F
    .locals 1

    .prologue
    .line 1139
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraRightOffset:F

    return v0
.end method

.method public getExtraTopOffset()F
    .locals 1

    .prologue
    .line 1125
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraTopOffset:F

    return v0
.end method

.method public getHighlighted()[Lcom/github/mikephil/charting/highlight/Highlight;
    .locals 1

    .prologue
    .line 484
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    return-object v0
.end method

.method public getHighlighter()Lcom/github/mikephil/charting/highlight/ChartHighlighter;
    .locals 1

    .prologue
    .line 1455
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mHighlighter:Lcom/github/mikephil/charting/highlight/ChartHighlighter;

    return-object v0
.end method

.method public getJobs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1658
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mJobs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLegend()Lcom/github/mikephil/charting/components/Legend;
    .locals 1

    .prologue
    .line 1245
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    return-object v0
.end method

.method public getLegendRenderer()Lcom/github/mikephil/charting/renderer/LegendRenderer;
    .locals 1

    .prologue
    .line 1255
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegendRenderer:Lcom/github/mikephil/charting/renderer/LegendRenderer;

    return-object v0
.end method

.method protected abstract getMarkerPosition(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)[F
.end method

.method public getMarkerView()Lcom/github/mikephil/charting/components/MarkerView;
    .locals 1

    .prologue
    .line 1234
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mMarkerView:Lcom/github/mikephil/charting/components/MarkerView;

    return-object v0
.end method

.method public getOnChartGestureListener()Lcom/github/mikephil/charting/listener/OnChartGestureListener;
    .locals 1

    .prologue
    .line 957
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mGestureListener:Lcom/github/mikephil/charting/listener/OnChartGestureListener;

    return-object v0
.end method

.method public getPaint(I)Landroid/graphics/Paint;
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 1345
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    sparse-switch p1, :sswitch_data_0

    .line 1352
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1347
    :sswitch_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mInfoPaint:Landroid/graphics/Paint;

    goto :goto_0

    .line 1349
    :sswitch_1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescPaint:Landroid/graphics/Paint;

    goto :goto_0

    .line 1345
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0xb -> :sswitch_1
    .end sparse-switch
.end method

.method public getRenderer()Lcom/github/mikephil/charting/renderer/DataRenderer;
    .locals 1

    .prologue
    .line 1440
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    return-object v0
.end method

.method public getValueCount()I
    .locals 1

    .prologue
    .line 1020
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->getYValCount()I

    move-result v0

    return v0
.end method

.method public getViewPortHandler()Lcom/github/mikephil/charting/utils/ViewPortHandler;
    .locals 1

    .prologue
    .line 1431
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    return-object v0
.end method

.method public getXChartMax()F
    .locals 1

    .prologue
    .line 1001
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mXChartMax:F

    return v0
.end method

.method public getXChartMin()F
    .locals 1

    .prologue
    .line 1006
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mXChartMin:F

    return v0
.end method

.method public getXValCount()I
    .locals 1

    .prologue
    .line 1011
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->getXValCount()I

    move-result v0

    return v0
.end method

.method public getXValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1383
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->getXValCount()I

    move-result v0

    if-gt v0, p1, :cond_1

    .line 1384
    :cond_0
    const/4 v0, 0x0

    .line 1386
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->getXVals()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getYMax()F
    .locals 1

    .prologue
    .line 987
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->getYMax()F

    move-result v0

    return v0
.end method

.method public getYMin()F
    .locals 1

    .prologue
    .line 996
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->getYMin()F

    move-result v0

    return v0
.end method

.method public highlightTouch(Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 1
    .param p1, "high"    # Lcom/github/mikephil/charting/highlight/Highlight;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 627
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/github/mikephil/charting/charts/Chart;->highlightValue(Lcom/github/mikephil/charting/highlight/Highlight;Z)V

    .line 628
    return-void
.end method

.method public highlightValue(II)V
    .locals 3
    .param p1, "xIndex"    # I
    .param p2, "dataSetIndex"    # I

    .prologue
    .line 551
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->getXValCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 552
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetCount()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 554
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/Chart;->highlightValues([Lcom/github/mikephil/charting/highlight/Highlight;)V

    .line 560
    :goto_0
    return-void

    .line 556
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/github/mikephil/charting/highlight/Highlight;

    const/4 v1, 0x0

    new-instance v2, Lcom/github/mikephil/charting/highlight/Highlight;

    invoke-direct {v2, p1, p2}, Lcom/github/mikephil/charting/highlight/Highlight;-><init>(II)V

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/Chart;->highlightValues([Lcom/github/mikephil/charting/highlight/Highlight;)V

    goto :goto_0
.end method

.method public highlightValue(Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 1
    .param p1, "highlight"    # Lcom/github/mikephil/charting/highlight/Highlight;

    .prologue
    .line 569
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/github/mikephil/charting/charts/Chart;->highlightValue(Lcom/github/mikephil/charting/highlight/Highlight;Z)V

    .line 570
    return-void
.end method

.method public highlightValue(Lcom/github/mikephil/charting/highlight/Highlight;Z)V
    .locals 5
    .param p1, "high"    # Lcom/github/mikephil/charting/highlight/Highlight;
    .param p2, "callListener"    # Z

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    const/4 v4, 0x0

    .line 582
    const/4 v0, 0x0

    .line 584
    .local v0, "e":Lcom/github/mikephil/charting/data/Entry;
    if-nez p1, :cond_2

    .line 585
    iput-object v4, p0, Lcom/github/mikephil/charting/charts/Chart;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    .line 609
    :goto_0
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mSelectionListener:Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;

    if-eqz v1, :cond_0

    .line 611
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->valuesToHighlight()Z

    move-result v1

    if-nez v1, :cond_7

    .line 612
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mSelectionListener:Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;

    invoke-interface {v1}, Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;->onNothingSelected()V

    .line 619
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->invalidate()V

    .line 620
    :cond_1
    return-void

    .line 588
    :cond_2
    iget-boolean v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mLogEnabled:Z

    if-eqz v1, :cond_3

    .line 589
    const-string v1, "MPAndroidChart"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Highlighted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_3
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v1, p1}, Lcom/github/mikephil/charting/data/ChartData;->getEntryForHighlight(Lcom/github/mikephil/charting/highlight/Highlight;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    .line 594
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 598
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v1

    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->getXIndex()I

    move-result v2

    if-eq v1, v2, :cond_6

    .line 599
    :cond_5
    iput-object v4, p0, Lcom/github/mikephil/charting/charts/Chart;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    .line 600
    const/4 p1, 0x0

    goto :goto_0

    .line 603
    :cond_6
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/github/mikephil/charting/highlight/Highlight;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iput-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    goto :goto_0

    .line 615
    :cond_7
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mSelectionListener:Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v2

    invoke-interface {v1, v0, v2, p1}, Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;->onValueSelected(Lcom/github/mikephil/charting/data/Entry;ILcom/github/mikephil/charting/highlight/Highlight;)V

    goto :goto_1
.end method

.method public highlightValues([Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 2
    .param p1, "highs"    # [Lcom/github/mikephil/charting/highlight/Highlight;

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    const/4 v1, 0x0

    .line 530
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    .line 532
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    aget-object v0, p1, v1

    if-nez v0, :cond_1

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mChartTouchListener:Lcom/github/mikephil/charting/listener/ChartTouchListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/listener/ChartTouchListener;->setLastHighlighted(Lcom/github/mikephil/charting/highlight/Highlight;)V

    .line 539
    :goto_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->invalidate()V

    .line 540
    return-void

    .line 535
    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mChartTouchListener:Lcom/github/mikephil/charting/listener/ChartTouchListener;

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/listener/ChartTouchListener;->setLastHighlighted(Lcom/github/mikephil/charting/highlight/Highlight;)V

    goto :goto_0
.end method

.method protected init()V
    .locals 4

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    const/4 v3, 0x1

    .line 216
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/Chart;->setWillNotDraw(Z)V

    .line 219
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    .line 220
    new-instance v0, Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-direct {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    .line 232
    :goto_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->init(Landroid/content/Context;)V

    .line 234
    new-instance v0, Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;

    invoke-direct {v0, v3}, Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDefaultFormatter:Lcom/github/mikephil/charting/formatter/ValueFormatter;

    .line 236
    new-instance v0, Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-direct {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 238
    new-instance v0, Lcom/github/mikephil/charting/components/Legend;

    invoke-direct {v0}, Lcom/github/mikephil/charting/components/Legend;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 240
    new-instance v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-direct {v0, v1, v2}, Lcom/github/mikephil/charting/renderer/LegendRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/Legend;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegendRenderer:Lcom/github/mikephil/charting/renderer/LegendRenderer;

    .line 242
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescPaint:Landroid/graphics/Paint;

    .line 243
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 244
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 245
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41100000    # 9.0f

    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 247
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mInfoPaint:Landroid/graphics/Paint;

    .line 248
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mInfoPaint:Landroid/graphics/Paint;

    const/16 v1, 0xf7

    const/16 v2, 0xbd

    const/16 v3, 0x33

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 249
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mInfoPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 250
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mInfoPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 252
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDrawPaint:Landroid/graphics/Paint;

    .line 254
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mLogEnabled:Z

    if-eqz v0, :cond_0

    .line 255
    const-string v0, ""

    const-string v1, "Chart.init()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_0
    return-void

    .line 222
    :cond_1
    new-instance v0, Lcom/github/mikephil/charting/animation/ChartAnimator;

    new-instance v1, Lcom/github/mikephil/charting/charts/Chart$1;

    invoke-direct {v1, p0}, Lcom/github/mikephil/charting/charts/Chart$1;-><init>(Lcom/github/mikephil/charting/charts/Chart;)V

    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/animation/ChartAnimator;-><init>(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    goto/16 :goto_0
.end method

.method public isDragDecelerationEnabled()Z
    .locals 1

    .prologue
    .line 738
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDragDecelerationEnabled:Z

    return v0
.end method

.method public isDrawMarkerViewEnabled()Z
    .locals 1

    .prologue
    .line 1362
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDrawMarkerViews:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    const/4 v0, 0x1

    .line 352
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    if-nez v1, :cond_1

    .line 359
    :cond_0
    :goto_0
    return v0

    .line 356
    :cond_1
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/ChartData;->getYValCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 359
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHighlightPerTapEnabled()Z
    .locals 1

    .prologue
    .line 493
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mHighLightPerTapEnabled:Z

    return v0
.end method

.method public isLogEnabled()Z
    .locals 1

    .prologue
    .line 1186
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mLogEnabled:Z

    return v0
.end method

.method public abstract notifyDataSetChanged()V
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 416
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    if-nez v1, :cond_1

    .line 419
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mNoDataText:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/Chart;->mInfoPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 421
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mNoDataTextDescription:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 422
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mInfoPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    neg-float v1, v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mInfoPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    add-float v0, v1, v2

    .line 423
    .local v0, "textOffset":F
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mNoDataTextDescription:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/Chart;->mInfoPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 441
    .end local v0    # "textOffset":F
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    iget-boolean v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mOffsetsCalculated:Z

    if-nez v1, :cond_0

    .line 431
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->calculateOffsets()V

    .line 432
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mOffsetsCalculated:Z

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1664
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1665
    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/Chart;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 1664
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1667
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1671
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 1672
    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    float-to-int v0, v1

    .line 1674
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getSuggestedMinimumWidth()I

    move-result v1

    .line 1675
    invoke-static {v0, p1}, Lcom/github/mikephil/charting/charts/Chart;->resolveSize(II)I

    move-result v2

    .line 1674
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1677
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getSuggestedMinimumHeight()I

    move-result v2

    .line 1678
    invoke-static {v0, p2}, Lcom/github/mikephil/charting/charts/Chart;->resolveSize(II)I

    move-result v3

    .line 1677
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1673
    invoke-virtual {p0, v1, v2}, Lcom/github/mikephil/charting/charts/Chart;->setMeasuredDimension(II)V

    .line 1680
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    const/16 v3, 0x2710

    .line 1684
    iget-boolean v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mLogEnabled:Z

    if-eqz v1, :cond_0

    .line 1685
    const-string v1, "MPAndroidChart"

    const-string v2, "OnSizeChanged()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    :cond_0
    if-lez p1, :cond_3

    if-lez p2, :cond_3

    if-ge p1, v3, :cond_3

    if-ge p2, v3, :cond_3

    .line 1689
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-virtual {v1, v2, v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->setChartDimens(FF)V

    .line 1691
    iget-boolean v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mLogEnabled:Z

    if-eqz v1, :cond_1

    .line 1692
    const-string v1, "MPAndroidChart"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting chart dimens, width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    :cond_1
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mJobs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 1695
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/Chart;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1698
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_2
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mJobs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1701
    :cond_3
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->notifyDataSetChanged()V

    .line 1703
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1704
    return-void
.end method

.method public removeJob(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "job"    # Ljava/lang/Runnable;

    .prologue
    .line 1644
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mJobs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1645
    return-void
.end method

.method public saveToGallery(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "quality"    # I

    .prologue
    .line 1625
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    const-string v2, ""

    const-string v3, "MPAndroidChart-Library Save"

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/github/mikephil/charting/charts/Chart;->saveToGallery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;I)Z

    move-result v0

    return v0
.end method

.method public saveToGallery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;I)Z
    .locals 17
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "subFolderPath"    # Ljava/lang/String;
    .param p3, "fileDescription"    # Ljava/lang/String;
    .param p4, "format"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p5, "quality"    # I

    .prologue
    .line 1548
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    if-ltz p5, :cond_0

    const/16 v15, 0x64

    move/from16 v0, p5

    if-le v0, v15, :cond_1

    .line 1549
    :cond_0
    const/16 p5, 0x32

    .line 1551
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1553
    .local v4, "currentTime":J
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    .line 1554
    .local v6, "extBaseDir":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/DCIM/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v7, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1555
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_2

    .line 1556
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    move-result v15

    if-nez v15, :cond_2

    .line 1557
    const/4 v15, 0x0

    .line 1612
    :goto_0
    return v15

    .line 1561
    :cond_2
    const-string v9, ""

    .line 1562
    .local v9, "mimeType":Ljava/lang/String;
    sget-object v15, Lcom/github/mikephil/charting/charts/Chart$2;->$SwitchMap$android$graphics$Bitmap$CompressFormat:[I

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap$CompressFormat;->ordinal()I

    move-result v16

    aget v15, v15, v16

    packed-switch v15, :pswitch_data_0

    .line 1575
    const-string v9, "image/jpeg"

    .line 1576
    const-string v15, ".jpg"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_3

    const-string v15, ".jpeg"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 1577
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".jpg"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1581
    :cond_3
    :goto_1
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1582
    .local v8, "filePath":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1584
    .local v10, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1586
    .end local v10    # "out":Ljava/io/FileOutputStream;
    .local v11, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/Chart;->getChartBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1587
    .local v2, "b":Landroid/graphics/Bitmap;
    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {v2, v0, v1, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1589
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->flush()V

    .line 1590
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1598
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v12

    .line 1600
    .local v12, "size":J
    new-instance v14, Landroid/content/ContentValues;

    const/16 v15, 0x8

    invoke-direct {v14, v15}, Landroid/content/ContentValues;-><init>(I)V

    .line 1603
    .local v14, "values":Landroid/content/ContentValues;
    const-string v15, "title"

    move-object/from16 v0, p1

    invoke-virtual {v14, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1604
    const-string v15, "_display_name"

    move-object/from16 v0, p1

    invoke-virtual {v14, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1605
    const-string v15, "date_added"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1606
    const-string v15, "mime_type"

    invoke-virtual {v14, v15, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1607
    const-string v15, "description"

    move-object/from16 v0, p3

    invoke-virtual {v14, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1608
    const-string v15, "orientation"

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1609
    const-string v15, "_data"

    invoke-virtual {v14, v15, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1610
    const-string v15, "_size"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1612
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/Chart;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    sget-object v16, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v15

    if-eqz v15, :cond_4

    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1564
    .end local v2    # "b":Landroid/graphics/Bitmap;
    .end local v8    # "filePath":Ljava/lang/String;
    .end local v11    # "out":Ljava/io/FileOutputStream;
    .end local v12    # "size":J
    .end local v14    # "values":Landroid/content/ContentValues;
    :pswitch_0
    const-string v9, "image/png"

    .line 1565
    const-string v15, ".png"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 1566
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".png"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    .line 1569
    :pswitch_1
    const-string v9, "image/webp"

    .line 1570
    const-string v15, ".webp"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 1571
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".webp"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    .line 1592
    .restart local v8    # "filePath":Ljava/lang/String;
    .restart local v10    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    .line 1593
    .local v3, "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 1595
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 1612
    .end local v3    # "e":Ljava/io/IOException;
    .end local v10    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "b":Landroid/graphics/Bitmap;
    .restart local v11    # "out":Ljava/io/FileOutputStream;
    .restart local v12    # "size":J
    .restart local v14    # "values":Landroid/content/ContentValues;
    :cond_4
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 1592
    .end local v2    # "b":Landroid/graphics/Bitmap;
    .end local v12    # "size":J
    .end local v14    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v3

    move-object v10, v11

    .end local v11    # "out":Ljava/io/FileOutputStream;
    .restart local v10    # "out":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 1562
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public saveToPath(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "pathOnSD"    # Ljava/lang/String;

    .prologue
    .line 1511
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getChartBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1513
    .local v0, "b":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 1515
    .local v2, "stream":Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1523
    .end local v2    # "stream":Ljava/io/OutputStream;
    .local v3, "stream":Ljava/io/OutputStream;
    :try_start_1
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x28

    invoke-virtual {v0, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1525
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1531
    const/4 v4, 0x1

    move-object v2, v3

    .end local v3    # "stream":Ljava/io/OutputStream;
    .restart local v2    # "stream":Ljava/io/OutputStream;
    :goto_0
    return v4

    .line 1526
    :catch_0
    move-exception v1

    .line 1527
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1528
    const/4 v4, 0x0

    goto :goto_0

    .line 1526
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "stream":Ljava/io/OutputStream;
    .restart local v3    # "stream":Ljava/io/OutputStream;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "stream":Ljava/io/OutputStream;
    .restart local v2    # "stream":Ljava/io/OutputStream;
    goto :goto_1
.end method

.method public setData(Lcom/github/mikephil/charting/data/ChartData;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 300
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    .local p1, "data":Lcom/github/mikephil/charting/data/ChartData;, "TT;"
    if-nez p1, :cond_1

    .line 301
    const-string v1, "MPAndroidChart"

    const-string v2, "Cannot set data for chart. Provided data object is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mOffsetsCalculated:Z

    .line 308
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 311
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/ChartData;->getYMin()F

    move-result v1

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/ChartData;->getYMax()F

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/github/mikephil/charting/charts/Chart;->calculateFormatter(FF)V

    .line 313
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/ChartData;->getDataSets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    .line 314
    .local v0, "set":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getValueFormatter()Lcom/github/mikephil/charting/formatter/ValueFormatter;

    move-result-object v2

    invoke-static {v2}, Lcom/github/mikephil/charting/utils/Utils;->needsDefaultFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 315
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mDefaultFormatter:Lcom/github/mikephil/charting/formatter/ValueFormatter;

    invoke-interface {v0, v2}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    goto :goto_1

    .line 319
    .end local v0    # "set":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    :cond_3
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->notifyDataSetChanged()V

    .line 321
    iget-boolean v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mLogEnabled:Z

    if-eqz v1, :cond_0

    .line 322
    const-string v1, "MPAndroidChart"

    const-string v2, "Data is set."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 1050
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    if-nez p1, :cond_0

    .line 1051
    const-string p1, ""

    .line 1052
    :cond_0
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescription:Ljava/lang/String;

    .line 1053
    return-void
.end method

.method public setDescriptionColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 1095
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1096
    return-void
.end method

.method public setDescriptionPosition(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1062
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescriptionPosition:Landroid/graphics/PointF;

    .line 1063
    return-void
.end method

.method public setDescriptionTextSize(F)V
    .locals 2
    .param p1, "size"    # F

    .prologue
    .line 1081
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    const/high16 v0, 0x41800000    # 16.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 1082
    const/high16 p1, 0x41800000    # 16.0f

    .line 1083
    :cond_0
    const/high16 v0, 0x40c00000    # 6.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 1084
    const/high16 p1, 0x40c00000    # 6.0f

    .line 1086
    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1087
    return-void
.end method

.method public setDescriptionTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "t"    # Landroid/graphics/Typeface;

    .prologue
    .line 1071
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1072
    return-void
.end method

.method public setDragDecelerationEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 747
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mDragDecelerationEnabled:Z

    .line 748
    return-void
.end method

.method public setDragDecelerationFrictionCoef(F)V
    .locals 1
    .param p1, "newValue"    # F

    .prologue
    .line 769
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 770
    const/4 p1, 0x0

    .line 772
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    .line 773
    const p1, 0x3f7fbe77    # 0.999f

    .line 775
    :cond_1
    iput p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mDragDecelerationFrictionCoef:F

    .line 776
    return-void
.end method

.method public setDrawMarkerViews(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1373
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mDrawMarkerViews:Z

    .line 1374
    return-void
.end method

.method public setExtraBottomOffset(F)V
    .locals 1
    .param p1, "offset"    # F

    .prologue
    .line 1146
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraBottomOffset:F

    .line 1147
    return-void
.end method

.method public setExtraLeftOffset(F)V
    .locals 1
    .param p1, "offset"    # F

    .prologue
    .line 1160
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraLeftOffset:F

    .line 1161
    return-void
.end method

.method public setExtraOffsets(FFFF)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 1108
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->setExtraLeftOffset(F)V

    .line 1109
    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/charts/Chart;->setExtraTopOffset(F)V

    .line 1110
    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/Chart;->setExtraRightOffset(F)V

    .line 1111
    invoke-virtual {p0, p4}, Lcom/github/mikephil/charting/charts/Chart;->setExtraBottomOffset(F)V

    .line 1112
    return-void
.end method

.method public setExtraRightOffset(F)V
    .locals 1
    .param p1, "offset"    # F

    .prologue
    .line 1132
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraRightOffset:F

    .line 1133
    return-void
.end method

.method public setExtraTopOffset(F)V
    .locals 1
    .param p1, "offset"    # F

    .prologue
    .line 1118
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraTopOffset:F

    .line 1119
    return-void
.end method

.method public setHardwareAccelerationEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    const/4 v2, 0x0

    .line 1714
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 1716
    if-eqz p1, :cond_0

    .line 1717
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/github/mikephil/charting/charts/Chart;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1724
    :goto_0
    return-void

    .line 1719
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/github/mikephil/charting/charts/Chart;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    .line 1721
    :cond_1
    const-string v0, "MPAndroidChart"

    const-string v1, "Cannot enable/disable hardware acceleration for devices below API level 11."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setHighlightPerTapEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 503
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mHighLightPerTapEnabled:Z

    .line 504
    return-void
.end method

.method public setHighlighter(Lcom/github/mikephil/charting/highlight/ChartHighlighter;)V
    .locals 0
    .param p1, "highlighter"    # Lcom/github/mikephil/charting/highlight/ChartHighlighter;

    .prologue
    .line 1466
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mHighlighter:Lcom/github/mikephil/charting/highlight/ChartHighlighter;

    .line 1467
    return-void
.end method

.method public setLogEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1177
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mLogEnabled:Z

    .line 1178
    return-void
.end method

.method public setMarkerView(Lcom/github/mikephil/charting/components/MarkerView;)V
    .locals 0
    .param p1, "v"    # Lcom/github/mikephil/charting/components/MarkerView;

    .prologue
    .line 1225
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mMarkerView:Lcom/github/mikephil/charting/components/MarkerView;

    .line 1226
    return-void
.end method

.method public setNoDataText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1196
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mNoDataText:Ljava/lang/String;

    .line 1197
    return-void
.end method

.method public setNoDataTextDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1206
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mNoDataTextDescription:Ljava/lang/String;

    .line 1207
    return-void
.end method

.method public setOnChartGestureListener(Lcom/github/mikephil/charting/listener/OnChartGestureListener;)V
    .locals 0
    .param p1, "l"    # Lcom/github/mikephil/charting/listener/OnChartGestureListener;

    .prologue
    .line 948
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mGestureListener:Lcom/github/mikephil/charting/listener/OnChartGestureListener;

    .line 949
    return-void
.end method

.method public setOnChartValueSelectedListener(Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;

    .prologue
    .line 938
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mSelectionListener:Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;

    .line 939
    return-void
.end method

.method public setOnTouchListener(Lcom/github/mikephil/charting/listener/ChartTouchListener;)V
    .locals 0
    .param p1, "l"    # Lcom/github/mikephil/charting/listener/ChartTouchListener;

    .prologue
    .line 637
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mChartTouchListener:Lcom/github/mikephil/charting/listener/ChartTouchListener;

    .line 638
    return-void
.end method

.method public setPaint(Landroid/graphics/Paint;I)V
    .locals 0
    .param p1, "p"    # Landroid/graphics/Paint;
    .param p2, "which"    # I

    .prologue
    .line 1328
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    sparse-switch p2, :sswitch_data_0

    .line 1336
    :goto_0
    return-void

    .line 1330
    :sswitch_0
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mInfoPaint:Landroid/graphics/Paint;

    goto :goto_0

    .line 1333
    :sswitch_1
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescPaint:Landroid/graphics/Paint;

    goto :goto_0

    .line 1328
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0xb -> :sswitch_1
    .end sparse-switch
.end method

.method public setRenderer(Lcom/github/mikephil/charting/renderer/DataRenderer;)V
    .locals 0
    .param p1, "renderer"    # Lcom/github/mikephil/charting/renderer/DataRenderer;

    .prologue
    .line 1450
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    if-eqz p1, :cond_0

    .line 1451
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    .line 1452
    :cond_0
    return-void
.end method

.method public setTouchEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1216
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mTouchEnabled:Z

    .line 1217
    return-void
.end method

.method public valuesToHighlight()Z
    .locals 2

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    const/4 v0, 0x0

    .line 514
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    array-length v1, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
