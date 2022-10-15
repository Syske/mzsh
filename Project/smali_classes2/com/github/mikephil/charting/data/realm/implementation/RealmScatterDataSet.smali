.class public Lcom/github/mikephil/charting/data/realm/implementation/RealmScatterDataSet;
.super Lcom/github/mikephil/charting/data/realm/base/RealmLineScatterCandleRadarDataSet;
.source "RealmScatterDataSet.java"

# interfaces
.implements Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lio/realm/RealmObject;",
        ">",
        "Lcom/github/mikephil/charting/data/realm/base/RealmLineScatterCandleRadarDataSet",
        "<TT;",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">;",
        "Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;"
    }
.end annotation


# instance fields
.field private mScatterShape:Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

.field private mShapeSize:F


# direct methods
.method public constructor <init>(Lio/realm/RealmResults;Ljava/lang/String;)V
    .locals 2
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
    .line 37
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmScatterDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmScatterDataSet<TT;>;"
    .local p1, "result":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/data/realm/base/RealmLineScatterCandleRadarDataSet;-><init>(Lio/realm/RealmResults;Ljava/lang/String;)V

    .line 21
    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmScatterDataSet;->mShapeSize:F

    .line 27
    sget-object v0, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->SQUARE:Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

    iput-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmScatterDataSet;->mScatterShape:Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

    .line 39
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmScatterDataSet;->results:Lio/realm/RealmResults;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/data/realm/implementation/RealmScatterDataSet;->build(Lio/realm/RealmResults;)V

    .line 40
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmScatterDataSet;->results:Lio/realm/RealmResults;

    invoke-virtual {v1}, Lio/realm/RealmResults;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/github/mikephil/charting/data/realm/implementation/RealmScatterDataSet;->calcMinMax(II)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lio/realm/RealmResults;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
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
    .line 51
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmScatterDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmScatterDataSet<TT;>;"
    .local p1, "result":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/data/realm/base/RealmLineScatterCandleRadarDataSet;-><init>(Lio/realm/RealmResults;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmScatterDataSet;->mShapeSize:F

    .line 27
    sget-object v0, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->SQUARE:Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

    iput-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmScatterDataSet;->mScatterShape:Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

    .line 53
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmScatterDataSet;->results:Lio/realm/RealmResults;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/data/realm/implementation/RealmScatterDataSet;->build(Lio/realm/RealmResults;)V

    .line 54
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmScatterDataSet;->results:Lio/realm/RealmResults;

    invoke-virtual {v1}, Lio/realm/RealmResults;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/github/mikephil/charting/data/realm/implementation/RealmScatterDataSet;->calcMinMax(II)V

    .line 55
    return-void
.end method


# virtual methods
.method public build(Lio/realm/RealmResults;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmResults",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmScatterDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmScatterDataSet<TT;>;"
    .local p1, "results":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TT;>;"
    iget-object v3, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmScatterDataSet;->mIndexField:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 62
    const/4 v2, 0x0

    .line 64
    .local v2, "xIndex":I
    invoke-virtual {p1}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmObject;

    .line 66
    .local v1, "object":Lio/realm/RealmObject;, "TT;"
    new-instance v0, Lio/realm/dynamic/DynamicRealmObject;

    invoke-direct {v0, v1}, Lio/realm/dynamic/DynamicRealmObject;-><init>(Lio/realm/RealmObject;)V

    .line 67
    .local v0, "dynamicObject":Lio/realm/dynamic/DynamicRealmObject;
    iget-object v4, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmScatterDataSet;->mValues:Ljava/util/List;

    new-instance v5, Lcom/github/mikephil/charting/data/Entry;

    iget-object v6, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmScatterDataSet;->mValuesField:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lio/realm/dynamic/DynamicRealmObject;->getFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    add-int/lit8 v2, v2, 0x1

    .line 69
    goto :goto_0

    .line 73
    .end local v0    # "dynamicObject":Lio/realm/dynamic/DynamicRealmObject;
    .end local v1    # "object":Lio/realm/RealmObject;, "TT;"
    .end local v2    # "xIndex":I
    :cond_0
    invoke-virtual {p1}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmObject;

    .line 75
    .restart local v1    # "object":Lio/realm/RealmObject;, "TT;"
    new-instance v0, Lio/realm/dynamic/DynamicRealmObject;

    invoke-direct {v0, v1}, Lio/realm/dynamic/DynamicRealmObject;-><init>(Lio/realm/RealmObject;)V

    .line 76
    .restart local v0    # "dynamicObject":Lio/realm/dynamic/DynamicRealmObject;
    iget-object v4, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmScatterDataSet;->mValues:Ljava/util/List;

    new-instance v5, Lcom/github/mikephil/charting/data/Entry;

    iget-object v6, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmScatterDataSet;->mValuesField:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lio/realm/dynamic/DynamicRealmObject;->getFloat(Ljava/lang/String;)F

    move-result v6

    iget-object v7, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmScatterDataSet;->mIndexField:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lio/realm/dynamic/DynamicRealmObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v5, v6, v7}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 79
    .end local v0    # "dynamicObject":Lio/realm/dynamic/DynamicRealmObject;
    .end local v1    # "object":Lio/realm/RealmObject;, "TT;"
    :cond_1
    return-void
.end method

.method public getScatterShape()Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;
    .locals 1

    .prologue
    .line 109
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmScatterDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmScatterDataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmScatterDataSet;->mScatterShape:Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

    return-object v0
.end method

.method public getScatterShapeSize()F
    .locals 1

    .prologue
    .line 93
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmScatterDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmScatterDataSet<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmScatterDataSet;->mShapeSize:F

    return v0
.end method

.method public setScatterShape(Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;)V
    .locals 0
    .param p1, "shape"    # Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

    .prologue
    .line 104
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmScatterDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmScatterDataSet<TT;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmScatterDataSet;->mScatterShape:Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

    .line 105
    return-void
.end method

.method public setScatterShapeSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 88
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmScatterDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmScatterDataSet<TT;>;"
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmScatterDataSet;->mShapeSize:F

    .line 89
    return-void
.end method
