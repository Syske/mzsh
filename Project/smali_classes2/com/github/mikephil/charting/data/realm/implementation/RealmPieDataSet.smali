.class public Lcom/github/mikephil/charting/data/realm/implementation/RealmPieDataSet;
.super Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;
.source "RealmPieDataSet.java"

# interfaces
.implements Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lio/realm/RealmObject;",
        ">",
        "Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet",
        "<TT;",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">;",
        "Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;"
    }
.end annotation


# instance fields
.field private mShift:F

.field private mSliceSpace:F


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
    .line 35
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmPieDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmPieDataSet<TT;>;"
    .local p1, "result":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;-><init>(Lio/realm/RealmResults;Ljava/lang/String;)V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmPieDataSet;->mSliceSpace:F

    .line 25
    const/high16 v0, 0x41900000    # 18.0f

    iput v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmPieDataSet;->mShift:F

    .line 37
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmPieDataSet;->results:Lio/realm/RealmResults;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/data/realm/implementation/RealmPieDataSet;->build(Lio/realm/RealmResults;)V

    .line 38
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmPieDataSet;->results:Lio/realm/RealmResults;

    invoke-virtual {v1}, Lio/realm/RealmResults;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/github/mikephil/charting/data/realm/implementation/RealmPieDataSet;->calcMinMax(II)V

    .line 39
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
    .line 49
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmPieDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmPieDataSet<TT;>;"
    .local p1, "result":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;-><init>(Lio/realm/RealmResults;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmPieDataSet;->mSliceSpace:F

    .line 25
    const/high16 v0, 0x41900000    # 18.0f

    iput v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmPieDataSet;->mShift:F

    .line 51
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmPieDataSet;->results:Lio/realm/RealmResults;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/data/realm/implementation/RealmPieDataSet;->build(Lio/realm/RealmResults;)V

    .line 52
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmPieDataSet;->results:Lio/realm/RealmResults;

    invoke-virtual {v1}, Lio/realm/RealmResults;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/github/mikephil/charting/data/realm/implementation/RealmPieDataSet;->calcMinMax(II)V

    .line 53
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
    .line 58
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmPieDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmPieDataSet<TT;>;"
    .local p1, "results":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TT;>;"
    iget-object v3, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmPieDataSet;->mIndexField:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 60
    const/4 v2, 0x0

    .line 62
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

    .line 64
    .local v1, "object":Lio/realm/RealmObject;, "TT;"
    new-instance v0, Lio/realm/dynamic/DynamicRealmObject;

    invoke-direct {v0, v1}, Lio/realm/dynamic/DynamicRealmObject;-><init>(Lio/realm/RealmObject;)V

    .line 65
    .local v0, "dynamicObject":Lio/realm/dynamic/DynamicRealmObject;
    iget-object v4, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmPieDataSet;->mValues:Ljava/util/List;

    new-instance v5, Lcom/github/mikephil/charting/data/Entry;

    iget-object v6, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmPieDataSet;->mValuesField:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lio/realm/dynamic/DynamicRealmObject;->getFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    add-int/lit8 v2, v2, 0x1

    .line 67
    goto :goto_0

    .line 71
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

    .line 73
    .restart local v1    # "object":Lio/realm/RealmObject;, "TT;"
    new-instance v0, Lio/realm/dynamic/DynamicRealmObject;

    invoke-direct {v0, v1}, Lio/realm/dynamic/DynamicRealmObject;-><init>(Lio/realm/RealmObject;)V

    .line 74
    .restart local v0    # "dynamicObject":Lio/realm/dynamic/DynamicRealmObject;
    iget-object v4, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmPieDataSet;->mValues:Ljava/util/List;

    new-instance v5, Lcom/github/mikephil/charting/data/Entry;

    iget-object v6, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmPieDataSet;->mValuesField:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lio/realm/dynamic/DynamicRealmObject;->getFloat(Ljava/lang/String;)F

    move-result v6

    iget-object v7, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmPieDataSet;->mIndexField:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lio/realm/dynamic/DynamicRealmObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v5, v6, v7}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 77
    .end local v0    # "dynamicObject":Lio/realm/dynamic/DynamicRealmObject;
    .end local v1    # "object":Lio/realm/RealmObject;, "TT;"
    :cond_1
    return-void
.end method

.method public getSelectionShift()F
    .locals 1

    .prologue
    .line 112
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmPieDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmPieDataSet<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmPieDataSet;->mShift:F

    return v0
.end method

.method public getSliceSpace()F
    .locals 1

    .prologue
    .line 97
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmPieDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmPieDataSet<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmPieDataSet;->mSliceSpace:F

    return v0
.end method

.method public setSelectionShift(F)V
    .locals 1
    .param p1, "shift"    # F

    .prologue
    .line 107
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmPieDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmPieDataSet<TT;>;"
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmPieDataSet;->mShift:F

    .line 108
    return-void
.end method

.method public setSliceSpace(F)V
    .locals 1
    .param p1, "degrees"    # F

    .prologue
    .line 87
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmPieDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmPieDataSet<TT;>;"
    const/high16 v0, 0x42340000    # 45.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 88
    const/high16 p1, 0x42340000    # 45.0f

    .line 89
    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 90
    const/4 p1, 0x0

    .line 92
    :cond_1
    iput p1, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmPieDataSet;->mSliceSpace:F

    .line 93
    return-void
.end method
