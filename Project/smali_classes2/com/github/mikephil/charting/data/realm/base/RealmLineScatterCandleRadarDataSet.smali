.class public abstract Lcom/github/mikephil/charting/data/realm/base/RealmLineScatterCandleRadarDataSet;
.super Lcom/github/mikephil/charting/data/realm/base/RealmBarLineScatterCandleBubbleDataSet;
.source "RealmLineScatterCandleRadarDataSet.java"

# interfaces
.implements Lcom/github/mikephil/charting/interfaces/datasets/ILineScatterCandleRadarDataSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lio/realm/RealmObject;",
        "S:",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">",
        "Lcom/github/mikephil/charting/data/realm/base/RealmBarLineScatterCandleBubbleDataSet",
        "<TT;TS;>;",
        "Lcom/github/mikephil/charting/interfaces/datasets/ILineScatterCandleRadarDataSet",
        "<TS;>;"
    }
.end annotation


# instance fields
.field protected mDrawHorizontalHighlightIndicator:Z

.field protected mDrawVerticalHighlightIndicator:Z

.field protected mHighlightDashPathEffect:Landroid/graphics/DashPathEffect;

.field protected mHighlightLineWidth:F


# direct methods
.method public constructor <init>(Lio/realm/RealmResults;Ljava/lang/String;)V
    .locals 1
    .param p2, "yValuesField"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmResults",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/base/RealmLineScatterCandleRadarDataSet;, "Lcom/github/mikephil/charting/data/realm/base/RealmLineScatterCandleRadarDataSet<TT;TS;>;"
    .local p1, "results":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TT;>;"
    const/4 v0, 0x1

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/data/realm/base/RealmBarLineScatterCandleBubbleDataSet;-><init>(Lio/realm/RealmResults;Ljava/lang/String;)V

    .line 17
    iput-boolean v0, p0, Lcom/github/mikephil/charting/data/realm/base/RealmLineScatterCandleRadarDataSet;->mDrawVerticalHighlightIndicator:Z

    .line 18
    iput-boolean v0, p0, Lcom/github/mikephil/charting/data/realm/base/RealmLineScatterCandleRadarDataSet;->mDrawHorizontalHighlightIndicator:Z

    .line 21
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/github/mikephil/charting/data/realm/base/RealmLineScatterCandleRadarDataSet;->mHighlightLineWidth:F

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/mikephil/charting/data/realm/base/RealmLineScatterCandleRadarDataSet;->mHighlightDashPathEffect:Landroid/graphics/DashPathEffect;

    .line 29
    return-void
.end method

.method public constructor <init>(Lio/realm/RealmResults;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "yValuesField"    # Ljava/lang/String;
    .param p3, "xIndexField"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmResults",
            "<TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/base/RealmLineScatterCandleRadarDataSet;, "Lcom/github/mikephil/charting/data/realm/base/RealmLineScatterCandleRadarDataSet<TT;TS;>;"
    .local p1, "results":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TT;>;"
    const/4 v0, 0x1

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/data/realm/base/RealmBarLineScatterCandleBubbleDataSet;-><init>(Lio/realm/RealmResults;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iput-boolean v0, p0, Lcom/github/mikephil/charting/data/realm/base/RealmLineScatterCandleRadarDataSet;->mDrawVerticalHighlightIndicator:Z

    .line 18
    iput-boolean v0, p0, Lcom/github/mikephil/charting/data/realm/base/RealmLineScatterCandleRadarDataSet;->mDrawHorizontalHighlightIndicator:Z

    .line 21
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/github/mikephil/charting/data/realm/base/RealmLineScatterCandleRadarDataSet;->mHighlightLineWidth:F

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/mikephil/charting/data/realm/base/RealmLineScatterCandleRadarDataSet;->mHighlightDashPathEffect:Landroid/graphics/DashPathEffect;

    .line 40
    return-void
.end method


# virtual methods
.method public disableDashedHighlightLine()V
    .locals 1

    .prologue
    .line 107
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/base/RealmLineScatterCandleRadarDataSet;, "Lcom/github/mikephil/charting/data/realm/base/RealmLineScatterCandleRadarDataSet<TT;TS;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/mikephil/charting/data/realm/base/RealmLineScatterCandleRadarDataSet;->mHighlightDashPathEffect:Landroid/graphics/DashPathEffect;

    .line 108
    return-void
.end method

.method public enableDashedHighlightLine(FFF)V
    .locals 3
    .param p1, "lineLength"    # F
    .param p2, "spaceLength"    # F
    .param p3, "phase"    # F

    .prologue
    .line 98
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/base/RealmLineScatterCandleRadarDataSet;, "Lcom/github/mikephil/charting/data/realm/base/RealmLineScatterCandleRadarDataSet<TT;TS;>;"
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-direct {v0, v1, p3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/realm/base/RealmLineScatterCandleRadarDataSet;->mHighlightDashPathEffect:Landroid/graphics/DashPathEffect;

    .line 101
    return-void
.end method

.method public getDashPathEffectHighlight()Landroid/graphics/DashPathEffect;
    .locals 1

    .prologue
    .line 122
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/base/RealmLineScatterCandleRadarDataSet;, "Lcom/github/mikephil/charting/data/realm/base/RealmLineScatterCandleRadarDataSet<TT;TS;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/base/RealmLineScatterCandleRadarDataSet;->mHighlightDashPathEffect:Landroid/graphics/DashPathEffect;

    return-object v0
.end method

.method public getHighlightLineWidth()F
    .locals 1

    .prologue
    .line 87
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/base/RealmLineScatterCandleRadarDataSet;, "Lcom/github/mikephil/charting/data/realm/base/RealmLineScatterCandleRadarDataSet<TT;TS;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/realm/base/RealmLineScatterCandleRadarDataSet;->mHighlightLineWidth:F

    return v0
.end method

.method public isDashedHighlightLineEnabled()Z
    .locals 1

    .prologue
    .line 117
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/base/RealmLineScatterCandleRadarDataSet;, "Lcom/github/mikephil/charting/data/realm/base/RealmLineScatterCandleRadarDataSet<TT;TS;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/base/RealmLineScatterCandleRadarDataSet;->mHighlightDashPathEffect:Landroid/graphics/DashPathEffect;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isHorizontalHighlightIndicatorEnabled()Z
    .locals 1

    .prologue
    .line 74
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/base/RealmLineScatterCandleRadarDataSet;, "Lcom/github/mikephil/charting/data/realm/base/RealmLineScatterCandleRadarDataSet<TT;TS;>;"
    iget-boolean v0, p0, Lcom/github/mikephil/charting/data/realm/base/RealmLineScatterCandleRadarDataSet;->mDrawHorizontalHighlightIndicator:Z

    return v0
.end method

.method public isVerticalHighlightIndicatorEnabled()Z
    .locals 1

    .prologue
    .line 69
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/base/RealmLineScatterCandleRadarDataSet;, "Lcom/github/mikephil/charting/data/realm/base/RealmLineScatterCandleRadarDataSet<TT;TS;>;"
    iget-boolean v0, p0, Lcom/github/mikephil/charting/data/realm/base/RealmLineScatterCandleRadarDataSet;->mDrawVerticalHighlightIndicator:Z

    return v0
.end method

.method public setDrawHighlightIndicators(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 63
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/base/RealmLineScatterCandleRadarDataSet;, "Lcom/github/mikephil/charting/data/realm/base/RealmLineScatterCandleRadarDataSet<TT;TS;>;"
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/data/realm/base/RealmLineScatterCandleRadarDataSet;->setDrawVerticalHighlightIndicator(Z)V

    .line 64
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/data/realm/base/RealmLineScatterCandleRadarDataSet;->setDrawHorizontalHighlightIndicator(Z)V

    .line 65
    return-void
.end method

.method public setDrawHorizontalHighlightIndicator(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 47
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/base/RealmLineScatterCandleRadarDataSet;, "Lcom/github/mikephil/charting/data/realm/base/RealmLineScatterCandleRadarDataSet<TT;TS;>;"
    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/realm/base/RealmLineScatterCandleRadarDataSet;->mDrawHorizontalHighlightIndicator:Z

    .line 48
    return-void
.end method

.method public setDrawVerticalHighlightIndicator(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 55
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/base/RealmLineScatterCandleRadarDataSet;, "Lcom/github/mikephil/charting/data/realm/base/RealmLineScatterCandleRadarDataSet<TT;TS;>;"
    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/realm/base/RealmLineScatterCandleRadarDataSet;->mDrawVerticalHighlightIndicator:Z

    .line 56
    return-void
.end method

.method public setHighlightLineWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 82
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/base/RealmLineScatterCandleRadarDataSet;, "Lcom/github/mikephil/charting/data/realm/base/RealmLineScatterCandleRadarDataSet<TT;TS;>;"
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/realm/base/RealmLineScatterCandleRadarDataSet;->mHighlightLineWidth:F

    .line 83
    return-void
.end method
