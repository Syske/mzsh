.class public abstract Lcom/github/mikephil/charting/data/LineRadarDataSet;
.super Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet;
.source "LineRadarDataSet.java"

# interfaces
.implements Lcom/github/mikephil/charting/interfaces/datasets/ILineRadarDataSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">",
        "Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet",
        "<TT;>;",
        "Lcom/github/mikephil/charting/interfaces/datasets/ILineRadarDataSet",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mDrawFilled:Z

.field private mFillAlpha:I

.field private mFillColor:I

.field private mFillColorArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLineWidth:F


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .param p2, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/github/mikephil/charting/data/LineRadarDataSet;, "Lcom/github/mikephil/charting/data/LineRadarDataSet<TT;>;"
    .local p1, "yVals":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 22
    const/16 v0, 0x8c

    const/16 v1, 0xea

    const/16 v2, 0xff

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/LineRadarDataSet;->mFillColor:I

    .line 27
    const/16 v0, 0x55

    iput v0, p0, Lcom/github/mikephil/charting/data/LineRadarDataSet;->mFillAlpha:I

    .line 32
    const/high16 v0, 0x40200000    # 2.5f

    iput v0, p0, Lcom/github/mikephil/charting/data/LineRadarDataSet;->mLineWidth:F

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/mikephil/charting/data/LineRadarDataSet;->mDrawFilled:Z

    .line 54
    return-void
.end method


# virtual methods
.method public getFillAlpha()I
    .locals 1

    .prologue
    .line 72
    .local p0, "this":Lcom/github/mikephil/charting/data/LineRadarDataSet;, "Lcom/github/mikephil/charting/data/LineRadarDataSet<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/LineRadarDataSet;->mFillAlpha:I

    return v0
.end method

.method public getFillColor()I
    .locals 1

    .prologue
    .line 58
    .local p0, "this":Lcom/github/mikephil/charting/data/LineRadarDataSet;, "Lcom/github/mikephil/charting/data/LineRadarDataSet<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/LineRadarDataSet;->mFillColor:I

    return v0
.end method

.method public getFillColorArray()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 49
    .local p0, "this":Lcom/github/mikephil/charting/data/LineRadarDataSet;, "Lcom/github/mikephil/charting/data/LineRadarDataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/LineRadarDataSet;->mFillColorArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLineWidth()F
    .locals 1

    .prologue
    .line 102
    .local p0, "this":Lcom/github/mikephil/charting/data/LineRadarDataSet;, "Lcom/github/mikephil/charting/data/LineRadarDataSet<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/LineRadarDataSet;->mLineWidth:F

    return v0
.end method

.method public isDrawFilledEnabled()Z
    .locals 1

    .prologue
    .line 112
    .local p0, "this":Lcom/github/mikephil/charting/data/LineRadarDataSet;, "Lcom/github/mikephil/charting/data/LineRadarDataSet<TT;>;"
    iget-boolean v0, p0, Lcom/github/mikephil/charting/data/LineRadarDataSet;->mDrawFilled:Z

    return v0
.end method

.method public setDrawFilled(Z)V
    .locals 0
    .param p1, "filled"    # Z

    .prologue
    .line 107
    .local p0, "this":Lcom/github/mikephil/charting/data/LineRadarDataSet;, "Lcom/github/mikephil/charting/data/LineRadarDataSet<TT;>;"
    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/LineRadarDataSet;->mDrawFilled:Z

    .line 108
    return-void
.end method

.method public setFillAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 82
    .local p0, "this":Lcom/github/mikephil/charting/data/LineRadarDataSet;, "Lcom/github/mikephil/charting/data/LineRadarDataSet<TT;>;"
    iput p1, p0, Lcom/github/mikephil/charting/data/LineRadarDataSet;->mFillAlpha:I

    .line 83
    return-void
.end method

.method public setFillColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 67
    .local p0, "this":Lcom/github/mikephil/charting/data/LineRadarDataSet;, "Lcom/github/mikephil/charting/data/LineRadarDataSet<TT;>;"
    iput p1, p0, Lcom/github/mikephil/charting/data/LineRadarDataSet;->mFillColor:I

    .line 68
    return-void
.end method

.method public setFillColorArray(II)V
    .locals 2
    .param p1, "startColor"    # I
    .param p2, "endColor"    # I

    .prologue
    .line 42
    .local p0, "this":Lcom/github/mikephil/charting/data/LineRadarDataSet;, "Lcom/github/mikephil/charting/data/LineRadarDataSet<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/LineRadarDataSet;->mFillColorArray:Ljava/util/ArrayList;

    .line 43
    iget-object v0, p0, Lcom/github/mikephil/charting/data/LineRadarDataSet;->mFillColorArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v0, p0, Lcom/github/mikephil/charting/data/LineRadarDataSet;->mFillColorArray:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    return-void
.end method

.method public setLineWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 93
    .local p0, "this":Lcom/github/mikephil/charting/data/LineRadarDataSet;, "Lcom/github/mikephil/charting/data/LineRadarDataSet<TT;>;"
    const v0, 0x3e4ccccd    # 0.2f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 94
    const p1, 0x3e4ccccd    # 0.2f

    .line 95
    :cond_0
    const/high16 v0, 0x41200000    # 10.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 96
    const/high16 p1, 0x41200000    # 10.0f

    .line 97
    :cond_1
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/LineRadarDataSet;->mLineWidth:F

    .line 98
    return-void
.end method
