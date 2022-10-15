.class public abstract Lcom/github/mikephil/charting/data/DataSet;
.super Lcom/github/mikephil/charting/data/BaseDataSet;
.source "DataSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mikephil/charting/data/DataSet$Rounding;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">",
        "Lcom/github/mikephil/charting/data/BaseDataSet",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected mYMax:F

.field protected mYMin:F

.field protected mYVals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
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
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    .local p1, "yVals":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0, p2}, Lcom/github/mikephil/charting/data/BaseDataSet;-><init>(Ljava/lang/String;)V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    .line 25
    iput v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMax:F

    .line 30
    iput v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMin:F

    .line 43
    iput-object p1, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    .line 45
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    .line 48
    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/github/mikephil/charting/data/DataSet;->calcMinMax(II)V

    .line 49
    return-void
.end method


# virtual methods
.method public addEntry(Lcom/github/mikephil/charting/data/Entry;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 298
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    .local p1, "e":Lcom/github/mikephil/charting/data/Entry;, "TT;"
    if-nez p1, :cond_0

    .line 299
    const/4 v2, 0x0

    .line 320
    :goto_0
    return v2

    .line 301
    :cond_0
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v0

    .line 303
    .local v0, "val":F
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/DataSet;->getYVals()Ljava/util/List;

    move-result-object v1

    .line 304
    .local v1, "yVals":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez v1, :cond_1

    .line 305
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "yVals":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 308
    .restart local v1    # "yVals":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 309
    iput v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMax:F

    .line 310
    iput v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMin:F

    .line 319
    :cond_2
    :goto_1
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    const/4 v2, 0x1

    goto :goto_0

    .line 312
    :cond_3
    iget v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMax:F

    cmpg-float v2, v2, v0

    if-gez v2, :cond_4

    .line 313
    iput v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMax:F

    .line 314
    :cond_4
    iget v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMin:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_2

    .line 315
    iput v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMin:F

    goto :goto_1
.end method

.method public addEntryOrdered(Lcom/github/mikephil/charting/data/Entry;)V
    .locals 4
    .param p1, "e"    # Lcom/github/mikephil/charting/data/Entry;

    .prologue
    .line 218
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    if-nez p1, :cond_0

    .line 244
    :goto_0
    return-void

    .line 221
    :cond_0
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v1

    .line 223
    .local v1, "val":F
    iget-object v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    if-nez v2, :cond_1

    .line 224
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    .line 227
    :cond_1
    iget-object v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 228
    iput v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMax:F

    .line 229
    iput v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMin:F

    .line 237
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    iget-object v3, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v2

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v3

    if-le v2, v3, :cond_5

    .line 238
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v2

    sget-object v3, Lcom/github/mikephil/charting/data/DataSet$Rounding;->UP:Lcom/github/mikephil/charting/data/DataSet$Rounding;

    invoke-virtual {p0, v2, v3}, Lcom/github/mikephil/charting/data/DataSet;->getEntryIndex(ILcom/github/mikephil/charting/data/DataSet$Rounding;)I

    move-result v0

    .line 239
    .local v0, "closestIndex":I
    iget-object v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v2, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 231
    .end local v0    # "closestIndex":I
    :cond_3
    iget v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMax:F

    cmpg-float v2, v2, v1

    if-gez v2, :cond_4

    .line 232
    iput v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMax:F

    .line 233
    :cond_4
    iget v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMin:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_2

    .line 234
    iput v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMin:F

    goto :goto_1

    .line 243
    :cond_5
    iget-object v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public calcMinMax(II)V
    .locals 8
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    const v7, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v6, 0x0

    .line 54
    iget-object v4, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    if-nez v4, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    iget-object v4, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 59
    .local v3, "yValCount":I
    if-eqz v3, :cond_0

    .line 64
    if-eqz p2, :cond_2

    if-lt p2, v3, :cond_5

    .line 65
    :cond_2
    add-int/lit8 v1, v3, -0x1

    .line 69
    .local v1, "endValue":I
    :goto_1
    iput v7, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMin:F

    .line 70
    const v4, -0x800001

    iput v4, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMax:F

    .line 72
    move v2, p1

    .local v2, "i":I
    :goto_2
    if-gt v2, v1, :cond_6

    .line 74
    iget-object v4, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/Entry;

    .line 76
    .local v0, "e":Lcom/github/mikephil/charting/data/Entry;, "TT;"
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_4

    .line 78
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v4

    iget v5, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMin:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3

    .line 79
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v4

    iput v4, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMin:F

    .line 81
    :cond_3
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v4

    iget v5, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMax:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    .line 82
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v4

    iput v4, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMax:F

    .line 72
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 67
    .end local v0    # "e":Lcom/github/mikephil/charting/data/Entry;, "TT;"
    .end local v1    # "endValue":I
    .end local v2    # "i":I
    :cond_5
    move v1, p2

    .restart local v1    # "endValue":I
    goto :goto_1

    .line 86
    .restart local v2    # "i":I
    :cond_6
    iget v4, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMin:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_0

    .line 87
    iput v6, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMin:F

    .line 88
    iput v6, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMax:F

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 291
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 292
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/DataSet;->notifyDataSetChanged()V

    .line 293
    return-void
.end method

.method public contains(Lcom/github/mikephil/charting/data/Entry;)Z
    .locals 4
    .param p1, "e"    # Lcom/github/mikephil/charting/data/Entry;

    .prologue
    .line 364
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/DataSet;->getYVals()Ljava/util/List;

    move-result-object v1

    .line 366
    .local v1, "values":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/Entry;

    .line 367
    .local v0, "entry":Lcom/github/mikephil/charting/data/Entry;
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 368
    const/4 v2, 0x1

    .line 371
    .end local v0    # "entry":Lcom/github/mikephil/charting/data/Entry;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public abstract copy()Lcom/github/mikephil/charting/data/DataSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/mikephil/charting/data/DataSet",
            "<TT;>;"
        }
    .end annotation
.end method

.method public getEntriesForXIndex(I)Ljava/util/List;
    .locals 7
    .param p1, "x"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v3, 0x0

    .line 110
    .local v3, "low":I
    iget-object v5, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 112
    .local v2, "high":I
    :goto_0
    if-gt v3, v2, :cond_3

    .line 113
    add-int v5, v2, v3

    div-int/lit8 v4, v5, 0x2

    .line 114
    .local v4, "m":I
    iget-object v5, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/Entry;

    .line 116
    .local v1, "entry":Lcom/github/mikephil/charting/data/Entry;, "TT;"
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v5

    if-ne p1, v5, :cond_1

    .line 117
    :goto_1
    if-lez v4, :cond_0

    iget-object v5, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    add-int/lit8 v6, v4, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 118
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 120
    :cond_0
    iget-object v5, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 121
    :goto_2
    if-ge v4, v2, :cond_1

    .line 122
    iget-object v5, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "entry":Lcom/github/mikephil/charting/data/Entry;, "TT;"
    check-cast v1, Lcom/github/mikephil/charting/data/Entry;

    .line 123
    .restart local v1    # "entry":Lcom/github/mikephil/charting/data/Entry;, "TT;"
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v5

    if-ne v5, p1, :cond_1

    .line 124
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 131
    :cond_1
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v5

    if-le p1, v5, :cond_2

    .line 132
    add-int/lit8 v3, v4, 0x1

    goto :goto_0

    .line 134
    :cond_2
    add-int/lit8 v2, v4, -0x1

    goto :goto_0

    .line 137
    .end local v1    # "entry":Lcom/github/mikephil/charting/data/Entry;, "TT;"
    .end local v4    # "m":I
    :cond_3
    return-object v0
.end method

.method public getEntryCount()I
    .locals 1

    .prologue
    .line 94
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 402
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

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
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 397
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    sget-object v0, Lcom/github/mikephil/charting/data/DataSet$Rounding;->CLOSEST:Lcom/github/mikephil/charting/data/DataSet$Rounding;

    invoke-virtual {p0, p1, v0}, Lcom/github/mikephil/charting/data/DataSet;->getEntryForXIndex(ILcom/github/mikephil/charting/data/DataSet$Rounding;)Lcom/github/mikephil/charting/data/Entry;

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
            ")TT;"
        }
    .end annotation

    .prologue
    .line 389
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/github/mikephil/charting/data/DataSet;->getEntryIndex(ILcom/github/mikephil/charting/data/DataSet$Rounding;)I

    move-result v0

    .line 390
    .local v0, "index":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 391
    iget-object v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/Entry;

    .line 392
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEntryIndex(ILcom/github/mikephil/charting/data/DataSet$Rounding;)I
    .locals 7
    .param p1, "xIndex"    # I
    .param p2, "rounding"    # Lcom/github/mikephil/charting/data/DataSet$Rounding;

    .prologue
    .line 408
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    const/4 v3, 0x0

    .line 409
    .local v3, "low":I
    iget-object v5, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 410
    .local v2, "high":I
    const/4 v0, -0x1

    .line 412
    .local v0, "closest":I
    :goto_0
    if-gt v3, v2, :cond_2

    .line 413
    add-int v5, v2, v3

    div-int/lit8 v4, v5, 0x2

    .line 415
    .local v4, "m":I
    iget-object v5, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v5

    if-ne p1, v5, :cond_0

    .line 416
    :goto_1
    if-lez v4, :cond_4

    iget-object v5, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    add-int/lit8 v6, v4, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v5

    if-ne v5, p1, :cond_4

    .line 417
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 422
    :cond_0
    iget-object v5, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v5

    if-le p1, v5, :cond_1

    .line 423
    add-int/lit8 v3, v4, 0x1

    .line 427
    :goto_2
    move v0, v4

    .line 428
    goto :goto_0

    .line 425
    :cond_1
    add-int/lit8 v2, v4, -0x1

    goto :goto_2

    .line 430
    .end local v4    # "m":I
    :cond_2
    const/4 v5, -0x1

    if-eq v0, v5, :cond_3

    .line 431
    iget-object v5, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v1

    .line 432
    .local v1, "closestXIndex":I
    sget-object v5, Lcom/github/mikephil/charting/data/DataSet$Rounding;->UP:Lcom/github/mikephil/charting/data/DataSet$Rounding;

    if-ne p2, v5, :cond_5

    .line 433
    if-ge v1, p1, :cond_3

    iget-object v5, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_3

    .line 434
    add-int/lit8 v0, v0, 0x1

    .end local v1    # "closestXIndex":I
    :cond_3
    :goto_3
    move v4, v0

    .line 443
    :cond_4
    return v4

    .line 436
    .restart local v1    # "closestXIndex":I
    :cond_5
    sget-object v5, Lcom/github/mikephil/charting/data/DataSet$Rounding;->DOWN:Lcom/github/mikephil/charting/data/DataSet$Rounding;

    if-ne p2, v5, :cond_3

    .line 437
    if-le v1, p1, :cond_3

    if-lez v0, :cond_3

    .line 438
    add-int/lit8 v0, v0, -0x1

    goto :goto_3
.end method

.method public getEntryIndex(Lcom/github/mikephil/charting/data/Entry;)I
    .locals 1
    .param p1, "e"    # Lcom/github/mikephil/charting/data/Entry;

    .prologue
    .line 376
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getIndexInEntries(I)I
    .locals 2
    .param p1, "xIndex"    # I

    .prologue
    .line 160
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 165
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 160
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getYMax()F
    .locals 1

    .prologue
    .line 204
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMax:F

    return v0
.end method

.method public getYMin()F
    .locals 1

    .prologue
    .line 199
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMin:F

    return v0
.end method

.method public getYValForXIndex(I)F
    .locals 2
    .param p1, "xIndex"    # I

    .prologue
    .line 449
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/data/DataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    .line 451
    .local v0, "e":Lcom/github/mikephil/charting/data/Entry;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 452
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v1

    .line 454
    :goto_0
    return v1

    :cond_0
    const/high16 v1, 0x7fc00000    # Float.NaN

    goto :goto_0
.end method

.method public getYVals()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    return-object v0
.end method

.method public removeEntry(I)Z
    .locals 2
    .param p1, "xIndex"    # I

    .prologue
    .line 350
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/data/DataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    .line 351
    .local v0, "e":Lcom/github/mikephil/charting/data/Entry;, "TT;"
    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/data/DataSet;->removeEntry(Lcom/github/mikephil/charting/data/Entry;)Z

    move-result v1

    return v1
.end method

.method public removeEntry(Lcom/github/mikephil/charting/data/Entry;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    .local p1, "e":Lcom/github/mikephil/charting/data/Entry;, "TT;"
    const/4 v1, 0x0

    .line 326
    if-nez p1, :cond_1

    move v0, v1

    .line 339
    :cond_0
    :goto_0
    return v0

    .line 329
    :cond_1
    iget-object v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    if-nez v2, :cond_2

    move v0, v1

    .line 330
    goto :goto_0

    .line 333
    :cond_2
    iget-object v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 335
    .local v0, "removed":Z
    if-eqz v0, :cond_0

    .line 336
    iget-object v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/github/mikephil/charting/data/DataSet;->calcMinMax(II)V

    goto :goto_0
.end method

.method public removeFirst()Z
    .locals 4

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    const/4 v2, 0x0

    .line 254
    iget-object v3, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/Entry;

    .line 256
    .local v0, "entry":Lcom/github/mikephil/charting/data/Entry;, "TT;"
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 258
    .local v1, "removed":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 259
    iget-object v3, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/github/mikephil/charting/data/DataSet;->calcMinMax(II)V

    .line 262
    :cond_0
    return v1

    .end local v1    # "removed":Z
    :cond_1
    move v1, v2

    .line 256
    goto :goto_0
.end method

.method public removeLast()Z
    .locals 5

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    const/4 v2, 0x0

    .line 273
    iget-object v3, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1

    move v1, v2

    .line 284
    :cond_0
    :goto_0
    return v1

    .line 276
    :cond_1
    iget-object v3, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    iget-object v4, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/Entry;

    .line 278
    .local v0, "entry":Lcom/github/mikephil/charting/data/Entry;, "TT;"
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 280
    .local v1, "removed":Z
    :goto_1
    if-eqz v1, :cond_0

    .line 281
    iget-object v3, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/github/mikephil/charting/data/DataSet;->calcMinMax(II)V

    goto :goto_0

    .end local v1    # "removed":Z
    :cond_2
    move v1, v2

    .line 278
    goto :goto_1
.end method

.method public toSimpleString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 192
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 193
    .local v0, "buffer":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DataSet, label: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/DataSet;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", entries: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 194
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/DataSet;->getLabel()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 177
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 178
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/DataSet;->toSimpleString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 182
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
