.class public Lcom/github/mikephil/charting/data/RadarDataSet;
.super Lcom/github/mikephil/charting/data/LineRadarDataSet;
.source "RadarDataSet.java"

# interfaces
.implements Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/data/LineRadarDataSet",
        "<",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">;",
        "Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
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
    .line 12
    .local p1, "yVals":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/data/LineRadarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 13
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
    .line 18
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .local v2, "yVals":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/github/mikephil/charting/data/RadarDataSet;->mYVals:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 21
    iget-object v3, p0, Lcom/github/mikephil/charting/data/RadarDataSet;->mYVals:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->copy()Lcom/github/mikephil/charting/data/Entry;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 24
    :cond_0
    new-instance v0, Lcom/github/mikephil/charting/data/RadarDataSet;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/RadarDataSet;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/github/mikephil/charting/data/RadarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 25
    .local v0, "copied":Lcom/github/mikephil/charting/data/RadarDataSet;
    iget-object v3, p0, Lcom/github/mikephil/charting/data/RadarDataSet;->mColors:Ljava/util/List;

    iput-object v3, v0, Lcom/github/mikephil/charting/data/RadarDataSet;->mColors:Ljava/util/List;

    .line 26
    iget v3, p0, Lcom/github/mikephil/charting/data/RadarDataSet;->mHighLightColor:I

    iput v3, v0, Lcom/github/mikephil/charting/data/RadarDataSet;->mHighLightColor:I

    .line 28
    return-object v0
.end method
