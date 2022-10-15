.class public Lcom/github/mikephil/charting/data/ScatterDataSet;
.super Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet;
.source "ScatterDataSet.java"

# interfaces
.implements Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet",
        "<",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">;",
        "Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;"
    }
.end annotation


# instance fields
.field private mScatterShape:Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

.field private mShapeSize:F


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p2, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "yVals":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 18
    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mShapeSize:F

    .line 24
    sget-object v0, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->SQUARE:Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

    iput-object v0, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mScatterShape:Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

    .line 35
    return-void
.end method


# virtual methods
.method public copy()Lcom/github/mikephil/charting/data/DataSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/mikephil/charting/data/DataSet",
            "<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v2, "yVals":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mYVals:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 43
    iget-object v3, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mYVals:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->copy()Lcom/github/mikephil/charting/data/Entry;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 46
    :cond_0
    new-instance v0, Lcom/github/mikephil/charting/data/ScatterDataSet;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/ScatterDataSet;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/github/mikephil/charting/data/ScatterDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 47
    .local v0, "copied":Lcom/github/mikephil/charting/data/ScatterDataSet;
    iget-object v3, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mColors:Ljava/util/List;

    iput-object v3, v0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mColors:Ljava/util/List;

    .line 48
    iget v3, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mShapeSize:F

    iput v3, v0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mShapeSize:F

    .line 49
    iget-object v3, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mScatterShape:Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

    iput-object v3, v0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mScatterShape:Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

    .line 51
    iget v3, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mHighLightColor:I

    iput v3, v0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mHighLightColor:I

    .line 53
    return-object v0
.end method

.method public getScatterShape()Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mScatterShape:Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

    return-object v0
.end method

.method public getScatterShapeSize()F
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mShapeSize:F

    return v0
.end method

.method public setScatterShape(Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;)V
    .locals 0
    .param p1, "shape"    # Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mScatterShape:Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

    .line 78
    return-void
.end method

.method public setScatterShapeSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 63
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mShapeSize:F

    .line 64
    return-void
.end method
