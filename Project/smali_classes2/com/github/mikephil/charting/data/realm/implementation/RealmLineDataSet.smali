.class public Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;
.super Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet;
.source "RealmLineDataSet.java"

# interfaces
.implements Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lio/realm/RealmObject;",
        ">",
        "Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet",
        "<TT;>;",
        "Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;"
    }
.end annotation


# instance fields
.field private mCircleColorHole:I

.field private mCircleColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCircleSize:F

.field private mCubicIntensity:F

.field private mDashPathEffect:Landroid/graphics/DashPathEffect;

.field private mDrawCircleHole:Z

.field private mDrawCircles:Z

.field private mDrawCubic:Z

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

.field private mFillFormatter:Lcom/github/mikephil/charting/formatter/FillFormatter;


# direct methods
.method public constructor <init>(Lio/realm/RealmResults;Ljava/lang/String;)V
    .locals 5
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
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet<TT;>;"
    .local p1, "result":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TT;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet;-><init>(Lio/realm/RealmResults;Ljava/lang/String;)V

    .line 30
    iput-object v2, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mCircleColors:Ljava/util/List;

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mCircleColorHole:I

    .line 40
    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mCircleSize:F

    .line 45
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mCubicIntensity:F

    .line 50
    iput-object v2, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mDashPathEffect:Landroid/graphics/DashPathEffect;

    .line 55
    new-instance v0, Lcom/github/mikephil/charting/formatter/DefaultFillFormatter;

    invoke-direct {v0}, Lcom/github/mikephil/charting/formatter/DefaultFillFormatter;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mFillFormatter:Lcom/github/mikephil/charting/formatter/FillFormatter;

    .line 60
    iput-boolean v1, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mDrawCircles:Z

    .line 65
    iput-boolean v4, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mDrawCubic:Z

    .line 67
    iput-boolean v1, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mDrawCircleHole:Z

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mCircleColors:Ljava/util/List;

    .line 93
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mCircleColors:Ljava/util/List;

    const/16 v1, 0x8c

    const/16 v2, 0xea

    const/16 v3, 0xff

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->results:Lio/realm/RealmResults;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->build(Lio/realm/RealmResults;)V

    .line 96
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->results:Lio/realm/RealmResults;

    invoke-virtual {v0}, Lio/realm/RealmResults;->size()I

    move-result v0

    invoke-virtual {p0, v4, v0}, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->calcMinMax(II)V

    .line 97
    return-void
.end method

.method public constructor <init>(Lio/realm/RealmResults;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
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
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet<TT;>;"
    .local p1, "result":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TT;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 107
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet;-><init>(Lio/realm/RealmResults;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iput-object v2, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mCircleColors:Ljava/util/List;

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mCircleColorHole:I

    .line 40
    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mCircleSize:F

    .line 45
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mCubicIntensity:F

    .line 50
    iput-object v2, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mDashPathEffect:Landroid/graphics/DashPathEffect;

    .line 55
    new-instance v0, Lcom/github/mikephil/charting/formatter/DefaultFillFormatter;

    invoke-direct {v0}, Lcom/github/mikephil/charting/formatter/DefaultFillFormatter;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mFillFormatter:Lcom/github/mikephil/charting/formatter/FillFormatter;

    .line 60
    iput-boolean v1, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mDrawCircles:Z

    .line 65
    iput-boolean v4, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mDrawCubic:Z

    .line 67
    iput-boolean v1, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mDrawCircleHole:Z

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mCircleColors:Ljava/util/List;

    .line 111
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mCircleColors:Ljava/util/List;

    const/16 v1, 0x8c

    const/16 v2, 0xea

    const/16 v3, 0xff

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->results:Lio/realm/RealmResults;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->build(Lio/realm/RealmResults;)V

    .line 114
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->results:Lio/realm/RealmResults;

    invoke-virtual {v0}, Lio/realm/RealmResults;->size()I

    move-result v0

    invoke-virtual {p0, v4, v0}, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->calcMinMax(II)V

    .line 115
    return-void
.end method


# virtual methods
.method public build(Lio/realm/RealmResults;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmResults",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet<TT;>;"
    .local p1, "results":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TT;>;"
    invoke-super {p0, p1}, Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet;->build(Lio/realm/RealmResults;)V

    .line 120
    return-void
.end method

.method public disableDashedLine()V
    .locals 1

    .prologue
    .line 177
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mDashPathEffect:Landroid/graphics/DashPathEffect;

    .line 178
    return-void
.end method

.method public enableDashedLine(FFF)V
    .locals 3
    .param p1, "lineLength"    # F
    .param p2, "spaceLength"    # F
    .param p3, "phase"    # F

    .prologue
    .line 168
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet<TT;>;"
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-direct {v0, v1, p3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mDashPathEffect:Landroid/graphics/DashPathEffect;

    .line 171
    return-void
.end method

.method public getCircleColor(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 233
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mCircleColors:Ljava/util/List;

    iget-object v1, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mCircleColors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getCircleColors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mCircleColors:Ljava/util/List;

    return-object v0
.end method

.method public getCircleHoleColor()I
    .locals 1

    .prologue
    .line 312
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mCircleColorHole:I

    return v0
.end method

.method public getCircleSize()F
    .locals 1

    .prologue
    .line 155
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mCircleSize:F

    return v0
.end method

.method public getCubicIntensity()F
    .locals 1

    .prologue
    .line 140
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mCubicIntensity:F

    return v0
.end method

.method public getDashPathEffect()Landroid/graphics/DashPathEffect;
    .locals 1

    .prologue
    .line 187
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mDashPathEffect:Landroid/graphics/DashPathEffect;

    return-object v0
.end method

.method public getFillColorArray()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 79
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mFillColorArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFillFormatter()Lcom/github/mikephil/charting/formatter/FillFormatter;
    .locals 1

    .prologue
    .line 345
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mFillFormatter:Lcom/github/mikephil/charting/formatter/FillFormatter;

    return-object v0
.end method

.method public isDashedLineEnabled()Z
    .locals 1

    .prologue
    .line 182
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mDashPathEffect:Landroid/graphics/DashPathEffect;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isDrawCircleHoleEnabled()Z
    .locals 1

    .prologue
    .line 326
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet<TT;>;"
    iget-boolean v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mDrawCircleHole:Z

    return v0
.end method

.method public isDrawCirclesEnabled()Z
    .locals 1

    .prologue
    .line 202
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet<TT;>;"
    iget-boolean v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mDrawCircles:Z

    return v0
.end method

.method public isDrawCubicEnabled()Z
    .locals 1

    .prologue
    .line 217
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet<TT;>;"
    iget-boolean v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mDrawCubic:Z

    return v0
.end method

.method public resetCircleColors()V
    .locals 1

    .prologue
    .line 298
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mCircleColors:Ljava/util/List;

    .line 299
    return-void
.end method

.method public setCircleColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 290
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet<TT;>;"
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->resetCircleColors()V

    .line 291
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mCircleColors:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    return-void
.end method

.method public setCircleColorHole(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 307
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet<TT;>;"
    iput p1, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mCircleColorHole:I

    .line 308
    return-void
.end method

.method public setCircleColors(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 246
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet<TT;>;"
    .local p1, "colors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mCircleColors:Ljava/util/List;

    .line 247
    return-void
.end method

.method public setCircleColors([I)V
    .locals 1
    .param p1, "colors"    # [I

    .prologue
    .line 259
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet<TT;>;"
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/ColorTemplate;->createColors([I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mCircleColors:Ljava/util/List;

    .line 260
    return-void
.end method

.method public setCircleColors([ILandroid/content/Context;)V
    .locals 5
    .param p1, "colors"    # [I
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    .line 274
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 276
    .local v0, "clrs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, p1, v2

    .line 277
    .local v1, "color":I
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 280
    .end local v1    # "color":I
    :cond_0
    iput-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mCircleColors:Ljava/util/List;

    .line 281
    return-void
.end method

.method public setCircleSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 150
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet<TT;>;"
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mCircleSize:F

    .line 151
    return-void
.end method

.method public setCubicIntensity(F)V
    .locals 1
    .param p1, "intensity"    # F

    .prologue
    .line 130
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet<TT;>;"
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 131
    const/high16 p1, 0x3f800000    # 1.0f

    .line 132
    :cond_0
    const v0, 0x3d4ccccd    # 0.05f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 133
    const p1, 0x3d4ccccd    # 0.05f

    .line 135
    :cond_1
    iput p1, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mCubicIntensity:F

    .line 136
    return-void
.end method

.method public setDrawCircleHole(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 321
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet<TT;>;"
    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mDrawCircleHole:Z

    .line 322
    return-void
.end method

.method public setDrawCircles(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 197
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet<TT;>;"
    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mDrawCircles:Z

    .line 198
    return-void
.end method

.method public setDrawCubic(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 212
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet<TT;>;"
    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mDrawCubic:Z

    .line 213
    return-void
.end method

.method public setFillColorArray(II)V
    .locals 2
    .param p1, "startColor"    # I
    .param p2, "endColor"    # I

    .prologue
    .line 72
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mFillColorArray:Ljava/util/ArrayList;

    .line 73
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mFillColorArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mFillColorArray:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method

.method public setFillFormatter(Lcom/github/mikephil/charting/formatter/FillFormatter;)V
    .locals 1
    .param p1, "formatter"    # Lcom/github/mikephil/charting/formatter/FillFormatter;

    .prologue
    .line 337
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet<TT;>;"
    if-nez p1, :cond_0

    .line 338
    new-instance v0, Lcom/github/mikephil/charting/formatter/DefaultFillFormatter;

    invoke-direct {v0}, Lcom/github/mikephil/charting/formatter/DefaultFillFormatter;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mFillFormatter:Lcom/github/mikephil/charting/formatter/FillFormatter;

    .line 341
    :goto_0
    return-void

    .line 340
    :cond_0
    iput-object p1, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mFillFormatter:Lcom/github/mikephil/charting/formatter/FillFormatter;

    goto :goto_0
.end method
