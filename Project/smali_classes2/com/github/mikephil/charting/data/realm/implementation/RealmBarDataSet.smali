.class public Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;
.super Lcom/github/mikephil/charting/data/realm/base/RealmBarLineScatterCandleBubbleDataSet;
.source "RealmBarDataSet.java"

# interfaces
.implements Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lio/realm/RealmObject;",
        ">",
        "Lcom/github/mikephil/charting/data/realm/base/RealmBarLineScatterCandleBubbleDataSet",
        "<TT;",
        "Lcom/github/mikephil/charting/data/BarEntry;",
        ">;",
        "Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;"
    }
.end annotation


# instance fields
.field private mBarShadowColor:I

.field private mBarSpace:F

.field private mHighLightAlpha:I

.field private mStackLabels:[Ljava/lang/String;

.field private mStackSize:I

.field private mStackValueFieldName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/realm/RealmResults;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
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
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet<TT;>;"
    .local p1, "results":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TT;>;"
    const/4 v3, 0x1

    const/16 v1, 0xd7

    const/4 v2, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/data/realm/base/RealmBarLineScatterCandleBubbleDataSet;-><init>(Lio/realm/RealmResults;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const v0, 0x3e19999a    # 0.15f

    iput v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;->mBarSpace:F

    .line 30
    iput v3, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;->mStackSize:I

    .line 35
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;->mBarShadowColor:I

    .line 40
    const/16 v0, 0x78

    iput v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;->mHighLightAlpha:I

    .line 45
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "Stack"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;->mStackLabels:[Ljava/lang/String;

    .line 51
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;->mHighLightColor:I

    .line 53
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;->results:Lio/realm/RealmResults;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;->build(Lio/realm/RealmResults;)V

    .line 54
    invoke-virtual {p1}, Lio/realm/RealmResults;->size()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;->calcMinMax(II)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lio/realm/RealmResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p2, "yValuesField"    # Ljava/lang/String;
    .param p3, "xIndexField"    # Ljava/lang/String;
    .param p4, "stackValueFieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmResults",
            "<TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet<TT;>;"
    .local p1, "results":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TT;>;"
    const/4 v3, 0x1

    const/16 v1, 0xd7

    const/4 v2, 0x0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/data/realm/base/RealmBarLineScatterCandleBubbleDataSet;-><init>(Lio/realm/RealmResults;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const v0, 0x3e19999a    # 0.15f

    iput v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;->mBarSpace:F

    .line 30
    iput v3, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;->mStackSize:I

    .line 35
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;->mBarShadowColor:I

    .line 40
    const/16 v0, 0x78

    iput v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;->mHighLightAlpha:I

    .line 45
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "Stack"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;->mStackLabels:[Ljava/lang/String;

    .line 67
    iput-object p4, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;->mStackValueFieldName:Ljava/lang/String;

    .line 68
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;->mHighLightColor:I

    .line 70
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;->results:Lio/realm/RealmResults;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;->build(Lio/realm/RealmResults;)V

    .line 71
    invoke-virtual {p1}, Lio/realm/RealmResults;->size()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;->calcMinMax(II)V

    .line 72
    return-void
.end method

.method private calcStackSize()V
    .locals 4

    .prologue
    .line 157
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;->mValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 159
    iget-object v2, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;->mValues:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/BarEntry;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarEntry;->getVals()[F

    move-result-object v1

    .line 161
    .local v1, "vals":[F
    if-eqz v1, :cond_0

    array-length v2, v1

    iget v3, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;->mStackSize:I

    if-le v2, v3, :cond_0

    .line 162
    array-length v2, v1

    iput v2, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;->mStackSize:I

    .line 157
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    .end local v1    # "vals":[F
    :cond_1
    return-void
.end method


# virtual methods
.method public build(Lio/realm/RealmResults;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmResults",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet<TT;>;"
    .local p1, "results":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TT;>;"
    invoke-virtual {p1}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/realm/RealmObject;

    .line 79
    .local v5, "realmObject":Lio/realm/RealmObject;, "TT;"
    new-instance v0, Lio/realm/dynamic/DynamicRealmObject;

    invoke-direct {v0, v5}, Lio/realm/dynamic/DynamicRealmObject;-><init>(Lio/realm/RealmObject;)V

    .line 83
    .local v0, "dynamicObject":Lio/realm/dynamic/DynamicRealmObject;
    :try_start_0
    iget-object v9, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;->mValuesField:Ljava/lang/String;

    invoke-virtual {v0, v9}, Lio/realm/dynamic/DynamicRealmObject;->getFloat(Ljava/lang/String;)F

    move-result v6

    .line 84
    .local v6, "value":F
    iget-object v9, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;->mValues:Ljava/util/List;

    new-instance v10, Lcom/github/mikephil/charting/data/BarEntry;

    iget-object v11, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;->mIndexField:Ljava/lang/String;

    invoke-virtual {v0, v11}, Lio/realm/dynamic/DynamicRealmObject;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-direct {v10, v6, v11}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FI)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    .end local v6    # "value":F
    :catch_0
    move-exception v1

    .line 88
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    iget-object v9, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;->mValuesField:Ljava/lang/String;

    invoke-virtual {v0, v9}, Lio/realm/dynamic/DynamicRealmObject;->getList(Ljava/lang/String;)Lio/realm/dynamic/DynamicRealmList;

    move-result-object v3

    .line 89
    .local v3, "list":Lio/realm/dynamic/DynamicRealmList;
    invoke-virtual {v3}, Lio/realm/dynamic/DynamicRealmList;->size()I

    move-result v9

    new-array v7, v9, [F

    .line 91
    .local v7, "values":[F
    const/4 v2, 0x0

    .line 92
    .local v2, "i":I
    invoke-virtual {v3}, Lio/realm/dynamic/DynamicRealmList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/realm/dynamic/DynamicRealmObject;

    .line 93
    .local v4, "o":Lio/realm/dynamic/DynamicRealmObject;
    iget-object v10, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;->mStackValueFieldName:Ljava/lang/String;

    invoke-virtual {v4, v10}, Lio/realm/dynamic/DynamicRealmObject;->getFloat(Ljava/lang/String;)F

    move-result v10

    aput v10, v7, v2

    .line 94
    add-int/lit8 v2, v2, 0x1

    .line 95
    goto :goto_1

    .line 97
    .end local v4    # "o":Lio/realm/dynamic/DynamicRealmObject;
    :cond_0
    iget-object v9, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;->mValues:Ljava/util/List;

    new-instance v10, Lcom/github/mikephil/charting/data/BarEntry;

    iget-object v11, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;->mIndexField:Ljava/lang/String;

    invoke-virtual {v0, v11}, Lio/realm/dynamic/DynamicRealmObject;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-direct {v10, v7, v11}, Lcom/github/mikephil/charting/data/BarEntry;-><init>([FI)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 101
    .end local v0    # "dynamicObject":Lio/realm/dynamic/DynamicRealmObject;
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v2    # "i":I
    .end local v3    # "list":Lio/realm/dynamic/DynamicRealmList;
    .end local v5    # "realmObject":Lio/realm/RealmObject;, "TT;"
    .end local v7    # "values":[F
    :cond_1
    invoke-direct {p0}, Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;->calcStackSize()V

    .line 102
    return-void
.end method

.method public calcMinMax(II)V
    .locals 8
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet<TT;>;"
    const v7, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v6, 0x0

    .line 107
    iget-object v4, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;->mValues:Ljava/util/List;

    if-nez v4, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v4, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;->mValues:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 112
    .local v3, "yValCount":I
    if-eqz v3, :cond_0

    .line 117
    if-eqz p2, :cond_2

    if-lt p2, v3, :cond_5

    .line 118
    :cond_2
    add-int/lit8 v1, v3, -0x1

    .line 122
    .local v1, "endValue":I
    :goto_1
    iput v7, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;->mYMin:F

    .line 123
    const v4, -0x800001

    iput v4, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;->mYMax:F

    .line 125
    move v2, p1

    .local v2, "i":I
    :goto_2
    if-gt v2, v1, :cond_8

    .line 127
    iget-object v4, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;->mValues:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/BarEntry;

    .line 129
    .local v0, "e":Lcom/github/mikephil/charting/data/BarEntry;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarEntry;->getVal()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_4

    .line 131
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarEntry;->getVals()[F

    move-result-object v4

    if-nez v4, :cond_6

    .line 133
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarEntry;->getVal()F

    move-result v4

    iget v5, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;->mYMin:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3

    .line 134
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarEntry;->getVal()F

    move-result v4

    iput v4, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;->mYMin:F

    .line 136
    :cond_3
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarEntry;->getVal()F

    move-result v4

    iget v5, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;->mYMax:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    .line 137
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarEntry;->getVal()F

    move-result v4

    iput v4, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;->mYMax:F

    .line 125
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 120
    .end local v0    # "e":Lcom/github/mikephil/charting/data/BarEntry;
    .end local v1    # "endValue":I
    .end local v2    # "i":I
    :cond_5
    move v1, p2

    .restart local v1    # "endValue":I
    goto :goto_1

    .line 140
    .restart local v0    # "e":Lcom/github/mikephil/charting/data/BarEntry;
    .restart local v2    # "i":I
    :cond_6
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarEntry;->getNegativeSum()F

    move-result v4

    neg-float v4, v4

    iget v5, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;->mYMin:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_7

    .line 141
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarEntry;->getNegativeSum()F

    move-result v4

    neg-float v4, v4

    iput v4, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;->mYMin:F

    .line 143
    :cond_7
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarEntry;->getPositiveSum()F

    move-result v4

    iget v5, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;->mYMax:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    .line 144
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarEntry;->getPositiveSum()F

    move-result v4

    iput v4, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;->mYMax:F

    goto :goto_3

    .line 149
    .end local v0    # "e":Lcom/github/mikephil/charting/data/BarEntry;
    :cond_8
    iget v4, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;->mYMin:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_0

    .line 150
    iput v6, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;->mYMin:F

    .line 151
    iput v6, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;->mYMax:F

    goto/16 :goto_0
.end method

.method public getBarShadowColor()I
    .locals 1

    .prologue
    .line 212
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;->mBarShadowColor:I

    return v0
.end method

.method public getBarSpace()F
    .locals 1

    .prologue
    .line 187
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;->mBarSpace:F

    return v0
.end method

.method public getBarSpacePercent()F
    .locals 2

    .prologue
    .line 182
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;->mBarSpace:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public getHighLightAlpha()I
    .locals 1

    .prologue
    .line 227
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;->mHighLightAlpha:I

    return v0
.end method

.method public getStackLabels()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;->mStackLabels:[Ljava/lang/String;

    return-object v0
.end method

.method public getStackSize()I
    .locals 1

    .prologue
    .line 168
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;->mStackSize:I

    return v0
.end method

.method public isStacked()Z
    .locals 2

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet<TT;>;"
    const/4 v0, 0x1

    .line 173
    iget v1, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;->mStackSize:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBarShadowColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 207
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet<TT;>;"
    iput p1, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;->mBarShadowColor:I

    .line 208
    return-void
.end method

.method public setBarSpacePercent(F)V
    .locals 1
    .param p1, "percent"    # F

    .prologue
    .line 196
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet<TT;>;"
    const/high16 v0, 0x42c80000    # 100.0f

    div-float v0, p1, v0

    iput v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;->mBarSpace:F

    .line 197
    return-void
.end method

.method public setHighLightAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 222
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet<TT;>;"
    iput p1, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;->mHighLightAlpha:I

    .line 223
    return-void
.end method

.method public setStackLabels([Ljava/lang/String;)V
    .locals 0
    .param p1, "labels"    # [Ljava/lang/String;

    .prologue
    .line 236
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet<TT;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBarDataSet;->mStackLabels:[Ljava/lang/String;

    .line 237
    return-void
.end method
