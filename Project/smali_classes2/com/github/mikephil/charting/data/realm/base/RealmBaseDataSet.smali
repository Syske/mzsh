.class public abstract Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;
.super Lcom/github/mikephil/charting/data/BaseDataSet;
.source "RealmBaseDataSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lio/realm/RealmObject;",
        "S:",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">",
        "Lcom/github/mikephil/charting/data/BaseDataSet",
        "<TS;>;"
    }
.end annotation


# instance fields
.field protected mIndexField:Ljava/lang/String;

.field protected mValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TS;>;"
        }
    .end annotation
.end field

.field protected mValuesField:Ljava/lang/String;

.field protected mYMax:F

.field protected mYMin:F

.field protected results:Lio/realm/RealmResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmResults",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/realm/RealmResults;Ljava/lang/String;)V
    .locals 3
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
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;, "Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet<TT;TS;>;"
    .local p1, "results":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TT;>;"
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Lcom/github/mikephil/charting/data/BaseDataSet;-><init>()V

    .line 31
    iput v0, p0, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->mYMax:F

    .line 36
    iput v0, p0, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->mYMin:F

    .line 49
    iput-object p1, p0, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->results:Lio/realm/RealmResults;

    .line 50
    iput-object p2, p0, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->mValuesField:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->mValues:Ljava/util/List;

    .line 53
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->mIndexField:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->results:Lio/realm/RealmResults;

    iget-object v1, p0, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->mIndexField:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lio/realm/RealmResults;->sort(Ljava/lang/String;Z)V

    .line 55
    :cond_0
    return-void
.end method

.method public constructor <init>(Lio/realm/RealmResults;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
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
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;, "Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet<TT;TS;>;"
    .local p1, "results":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TT;>;"
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Lcom/github/mikephil/charting/data/BaseDataSet;-><init>()V

    .line 31
    iput v0, p0, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->mYMax:F

    .line 36
    iput v0, p0, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->mYMin:F

    .line 65
    iput-object p1, p0, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->results:Lio/realm/RealmResults;

    .line 66
    iput-object p2, p0, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->mValuesField:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->mIndexField:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->mValues:Ljava/util/List;

    .line 70
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->mIndexField:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->results:Lio/realm/RealmResults;

    iget-object v1, p0, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->mIndexField:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lio/realm/RealmResults;->sort(Ljava/lang/String;Z)V

    .line 72
    return-void
.end method


# virtual methods
.method public addEntry(Lcom/github/mikephil/charting/data/Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation

    .prologue
    .line 219
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;, "Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet<TT;TS;>;"
    .local p1, "e":Lcom/github/mikephil/charting/data/Entry;, "TS;"
    if-nez p1, :cond_0

    .line 220
    const/4 v1, 0x0

    .line 240
    :goto_0
    return v1

    .line 222
    :cond_0
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v0

    .line 224
    .local v0, "val":F
    iget-object v1, p0, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->mValues:Ljava/util/List;

    if-nez v1, :cond_1

    .line 225
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->mValues:Ljava/util/List;

    .line 228
    :cond_1
    iget-object v1, p0, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->mValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 229
    iput v0, p0, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->mYMax:F

    .line 230
    iput v0, p0, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->mYMin:F

    .line 239
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->mValues:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    const/4 v1, 0x1

    goto :goto_0

    .line 232
    :cond_3
    iget v1, p0, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->mYMax:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_4

    .line 233
    iput v0, p0, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->mYMax:F

    .line 234
    :cond_4
    iget v1, p0, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->mYMin:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_2

    .line 235
    iput v0, p0, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->mYMin:F

    goto :goto_1
.end method

.method public abstract build(Lio/realm/RealmResults;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmResults",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public calcMinMax(II)V
    .locals 8
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;, "Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet<TT;TS;>;"
    const v7, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v6, 0x0

    .line 99
    iget-object v4, p0, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->mValues:Ljava/util/List;

    if-nez v4, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v4, p0, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->mValues:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 104
    .local v3, "yValCount":I
    if-eqz v3, :cond_0

    .line 109
    if-eqz p2, :cond_2

    if-lt p2, v3, :cond_5

    .line 110
    :cond_2
    add-int/lit8 v1, v3, -0x1

    .line 114
    .local v1, "endValue":I
    :goto_1
    iput v7, p0, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->mYMin:F

    .line 115
    const v4, -0x800001

    iput v4, p0, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->mYMax:F

    .line 117
    move v2, p1

    .local v2, "i":I
    :goto_2
    if-gt v2, v1, :cond_6

    .line 119
    iget-object v4, p0, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->mValues:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/Entry;

    .line 121
    .local v0, "e":Lcom/github/mikephil/charting/data/Entry;, "TS;"
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_4

    .line 123
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v4

    iget v5, p0, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->mYMin:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3

    .line 124
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v4

    iput v4, p0, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->mYMin:F

    .line 126
    :cond_3
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v4

    iget v5, p0, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->mYMax:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    .line 127
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v4

    iput v4, p0, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->mYMax:F

    .line 117
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 112
    .end local v0    # "e":Lcom/github/mikephil/charting/data/Entry;, "TS;"
    .end local v1    # "endValue":I
    .end local v2    # "i":I
    :cond_5
    move v1, p2

    .restart local v1    # "endValue":I
    goto :goto_1

    .line 131
    .restart local v2    # "i":I
    :cond_6
    iget v4, p0, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->mYMin:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_0

    .line 132
    iput v6, p0, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->mYMin:F

    .line 133
    iput v6, p0, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->mYMax:F

    goto :goto_0
.end method

.method public clearValues()V
    .locals 1

    .prologue
    .line 276
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;, "Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet<TT;TS;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->mValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 277
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->notifyDataSetChanged()V

    .line 278
    return-void
.end method

.method public getEntryCount()I
    .locals 1

    .prologue
    .line 93
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;, "Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet<TT;TS;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->mValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TS;"
        }
    .end annotation

    .prologue
    .line 156
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;, "Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet<TT;TS;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->mValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/Entry;

    return-object v0
.end method

.method public getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;
    .locals 1
    .param p1, "xIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TS;"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;, "Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet<TT;TS;>;"
    sget-object v0, Lcom/github/mikephil/charting/data/DataSet$Rounding;->CLOSEST:Lcom/github/mikephil/charting/data/DataSet$Rounding;

    invoke-virtual {p0, p1, v0}, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->getEntryForXIndex(ILcom/github/mikephil/charting/data/DataSet$Rounding;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    return-object v0
.end method

.method public getEntryForXIndex(ILcom/github/mikephil/charting/data/DataSet$Rounding;)Lcom/github/mikephil/charting/data/Entry;
    .locals 2
    .param p1, "xIndex"    # I
    .param p2, "rounding"    # Lcom/github/mikephil/charting/data/DataSet$Rounding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/github/mikephil/charting/data/DataSet$Rounding;",
            ")TS;"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;, "Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet<TT;TS;>;"
    invoke-virtual {p0, p1, p2}, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->getEntryIndex(ILcom/github/mikephil/charting/data/DataSet$Rounding;)I

    move-result v0

    .line 147
    .local v0, "index":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->mValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/Entry;

    .line 149
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEntryIndex(ILcom/github/mikephil/charting/data/DataSet$Rounding;)I
    .locals 7
    .param p1, "x"    # I
    .param p2, "rounding"    # Lcom/github/mikephil/charting/data/DataSet$Rounding;

    .prologue
    .line 162
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;, "Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet<TT;TS;>;"
    const/4 v3, 0x0

    .line 163
    .local v3, "low":I
    iget-object v5, p0, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->mValues:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 164
    .local v2, "high":I
    const/4 v0, -0x1

    .line 166
    .local v0, "closest":I
    :goto_0
    if-gt v3, v2, :cond_2

    .line 167
    add-int v5, v2, v3

    div-int/lit8 v4, v5, 0x2

    .line 169
    .local v4, "m":I
    iget-object v5, p0, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->mValues:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v5

    if-ne p1, v5, :cond_0

    .line 170
    :goto_1
    if-lez v4, :cond_4

    iget-object v5, p0, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->mValues:Ljava/util/List;

    add-int/lit8 v6, v4, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v5

    if-ne v5, p1, :cond_4

    .line 171
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 176
    :cond_0
    iget-object v5, p0, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->mValues:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v5

    if-le p1, v5, :cond_1

    .line 177
    add-int/lit8 v3, v4, 0x1

    .line 181
    :goto_2
    move v0, v4

    .line 182
    goto :goto_0

    .line 179
    :cond_1
    add-int/lit8 v2, v4, -0x1

    goto :goto_2

    .line 184
    .end local v4    # "m":I
    :cond_2
    const/4 v5, -0x1

    if-eq v0, v5, :cond_3

    .line 185
    iget-object v5, p0, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->mValues:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v1

    .line 186
    .local v1, "closestXIndex":I
    sget-object v5, Lcom/github/mikephil/charting/data/DataSet$Rounding;->UP:Lcom/github/mikephil/charting/data/DataSet$Rounding;

    if-ne p2, v5, :cond_5

    .line 187
    if-ge v1, p1, :cond_3

    iget-object v5, p0, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->mValues:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_3

    .line 188
    add-int/lit8 v0, v0, 0x1

    .end local v1    # "closestXIndex":I
    :cond_3
    :goto_3
    move v4, v0

    .line 197
    :cond_4
    return v4

    .line 190
    .restart local v1    # "closestXIndex":I
    :cond_5
    sget-object v5, Lcom/github/mikephil/charting/data/DataSet$Rounding;->DOWN:Lcom/github/mikephil/charting/data/DataSet$Rounding;

    if-ne p2, v5, :cond_3

    .line 191
    if-le v1, p1, :cond_3

    if-lez v0, :cond_3

    .line 192
    add-int/lit8 v0, v0, -0x1

    goto :goto_3
.end method

.method public getEntryIndex(Lcom/github/mikephil/charting/data/Entry;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)I"
        }
    .end annotation

    .prologue
    .line 202
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;, "Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet<TT;TS;>;"
    .local p1, "e":Lcom/github/mikephil/charting/data/Entry;, "TS;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->mValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getIndexField()Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;, "Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet<TT;TS;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->mIndexField:Ljava/lang/String;

    return-object v0
.end method

.method public getResults()Lio/realm/RealmResults;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmResults",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 281
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;, "Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet<TT;TS;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->results:Lio/realm/RealmResults;

    return-object v0
.end method

.method public getValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 269
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;, "Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet<TT;TS;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->mValues:Ljava/util/List;

    return-object v0
.end method

.method public getValuesField()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;, "Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet<TT;TS;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->mValuesField:Ljava/lang/String;

    return-object v0
.end method

.method public getYMax()F
    .locals 1

    .prologue
    .line 88
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;, "Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet<TT;TS;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->mYMax:F

    return v0
.end method

.method public getYMin()F
    .locals 1

    .prologue
    .line 82
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;, "Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet<TT;TS;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->mYMin:F

    return v0
.end method

.method public getYValForXIndex(I)F
    .locals 2
    .param p1, "xIndex"    # I

    .prologue
    .line 208
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;, "Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet<TT;TS;>;"
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    .line 210
    .local v0, "e":Lcom/github/mikephil/charting/data/Entry;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 211
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v1

    .line 213
    :goto_0
    return v1

    :cond_0
    const/high16 v1, 0x7fc00000    # Float.NaN

    goto :goto_0
.end method

.method public removeEntry(Lcom/github/mikephil/charting/data/Entry;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;, "Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet<TT;TS;>;"
    .local p1, "e":Lcom/github/mikephil/charting/data/Entry;, "TS;"
    const/4 v1, 0x0

    .line 246
    if-nez p1, :cond_1

    move v0, v1

    .line 259
    :cond_0
    :goto_0
    return v0

    .line 249
    :cond_1
    iget-object v2, p0, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->mValues:Ljava/util/List;

    if-nez v2, :cond_2

    move v0, v1

    .line 250
    goto :goto_0

    .line 253
    :cond_2
    iget-object v2, p0, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->mValues:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 255
    .local v0, "removed":Z
    if-eqz v0, :cond_0

    .line 256
    iget-object v2, p0, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->mValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->calcMinMax(II)V

    goto :goto_0
.end method

.method public setIndexField(Ljava/lang/String;)V
    .locals 0
    .param p1, "xIndexField"    # Ljava/lang/String;

    .prologue
    .line 317
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;, "Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet<TT;TS;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->mIndexField:Ljava/lang/String;

    .line 318
    return-void
.end method

.method public setValuesField(Ljava/lang/String;)V
    .locals 0
    .param p1, "yValuesField"    # Ljava/lang/String;

    .prologue
    .line 299
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;, "Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet<TT;TS;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/data/realm/base/RealmBaseDataSet;->mValuesField:Ljava/lang/String;

    .line 300
    return-void
.end method
