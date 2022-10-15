.class public Lcom/github/mikephil/charting/data/LineDataSet;
.super Lcom/github/mikephil/charting/data/LineRadarDataSet;
.source "LineDataSet.java"

# interfaces
.implements Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/data/LineRadarDataSet",
        "<",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">;",
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

.field private mFillFormatter:Lcom/github/mikephil/charting/formatter/FillFormatter;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
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
    .local p1, "yVals":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/data/LineRadarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 20
    iput-object v2, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleColors:Ljava/util/List;

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleColorHole:I

    .line 26
    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleSize:F

    .line 29
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCubicIntensity:F

    .line 32
    iput-object v2, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mDashPathEffect:Landroid/graphics/DashPathEffect;

    .line 35
    new-instance v0, Lcom/github/mikephil/charting/formatter/DefaultFillFormatter;

    invoke-direct {v0}, Lcom/github/mikephil/charting/formatter/DefaultFillFormatter;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mFillFormatter:Lcom/github/mikephil/charting/formatter/FillFormatter;

    .line 38
    iput-boolean v1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mDrawCircles:Z

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mDrawCubic:Z

    .line 43
    iput-boolean v1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mDrawCircleHole:Z

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleColors:Ljava/util/List;

    .line 56
    iget-object v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleColors:Ljava/util/List;

    const/16 v1, 0x8c

    const/16 v2, 0xea

    const/16 v3, 0xff

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
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
    .line 62
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v2, "yVals":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mYVals:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 65
    iget-object v3, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mYVals:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->copy()Lcom/github/mikephil/charting/data/Entry;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    :cond_0
    new-instance v0, Lcom/github/mikephil/charting/data/LineDataSet;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/LineDataSet;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 69
    .local v0, "copied":Lcom/github/mikephil/charting/data/LineDataSet;
    iget-object v3, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mColors:Ljava/util/List;

    iput-object v3, v0, Lcom/github/mikephil/charting/data/LineDataSet;->mColors:Ljava/util/List;

    .line 70
    iget v3, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleSize:F

    iput v3, v0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleSize:F

    .line 71
    iget-object v3, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleColors:Ljava/util/List;

    iput-object v3, v0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleColors:Ljava/util/List;

    .line 72
    iget-object v3, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mDashPathEffect:Landroid/graphics/DashPathEffect;

    iput-object v3, v0, Lcom/github/mikephil/charting/data/LineDataSet;->mDashPathEffect:Landroid/graphics/DashPathEffect;

    .line 73
    iget-boolean v3, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mDrawCircles:Z

    iput-boolean v3, v0, Lcom/github/mikephil/charting/data/LineDataSet;->mDrawCircles:Z

    .line 74
    iget-boolean v3, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mDrawCubic:Z

    iput-boolean v3, v0, Lcom/github/mikephil/charting/data/LineDataSet;->mDrawCubic:Z

    .line 75
    iget v3, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mHighLightColor:I

    iput v3, v0, Lcom/github/mikephil/charting/data/LineDataSet;->mHighLightColor:I

    .line 77
    return-object v0
.end method

.method public disableDashedLine()V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mDashPathEffect:Landroid/graphics/DashPathEffect;

    .line 136
    return-void
.end method

.method public enableDashedLine(FFF)V
    .locals 3
    .param p1, "lineLength"    # F
    .param p2, "spaceLength"    # F
    .param p3, "phase"    # F

    .prologue
    .line 126
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-direct {v0, v1, p3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mDashPathEffect:Landroid/graphics/DashPathEffect;

    .line 129
    return-void
.end method

.method public getCircleColor(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 191
    iget-object v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleColors:Ljava/util/List;

    iget-object v1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleColors:Ljava/util/List;

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
    .line 186
    iget-object v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleColors:Ljava/util/List;

    return-object v0
.end method

.method public getCircleHoleColor()I
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleColorHole:I

    return v0
.end method

.method public getCircleSize()F
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleSize:F

    return v0
.end method

.method public getCubicIntensity()F
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCubicIntensity:F

    return v0
.end method

.method public getDashPathEffect()Landroid/graphics/DashPathEffect;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mDashPathEffect:Landroid/graphics/DashPathEffect;

    return-object v0
.end method

.method public getFillFormatter()Lcom/github/mikephil/charting/formatter/FillFormatter;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mFillFormatter:Lcom/github/mikephil/charting/formatter/FillFormatter;

    return-object v0
.end method

.method public isDashedLineEnabled()Z
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mDashPathEffect:Landroid/graphics/DashPathEffect;

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
    .line 284
    iget-boolean v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mDrawCircleHole:Z

    return v0
.end method

.method public isDrawCirclesEnabled()Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mDrawCircles:Z

    return v0
.end method

.method public isDrawCubicEnabled()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mDrawCubic:Z

    return v0
.end method

.method public resetCircleColors()V
    .locals 1

    .prologue
    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleColors:Ljava/util/List;

    .line 257
    return-void
.end method

.method public setCircleColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/LineDataSet;->resetCircleColors()V

    .line 249
    iget-object v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleColors:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    return-void
.end method

.method public setCircleColorHole(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 265
    iput p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleColorHole:I

    .line 266
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
    .line 204
    .local p1, "colors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleColors:Ljava/util/List;

    .line 205
    return-void
.end method

.method public setCircleColors([I)V
    .locals 1
    .param p1, "colors"    # [I

    .prologue
    .line 217
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/ColorTemplate;->createColors([I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleColors:Ljava/util/List;

    .line 218
    return-void
.end method

.method public setCircleColors([ILandroid/content/Context;)V
    .locals 5
    .param p1, "colors"    # [I
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .local v0, "clrs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, p1, v2

    .line 235
    .local v1, "color":I
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 238
    .end local v1    # "color":I
    :cond_0
    iput-object v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleColors:Ljava/util/List;

    .line 239
    return-void
.end method

.method public setCircleSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 108
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleSize:F

    .line 109
    return-void
.end method

.method public setCubicIntensity(F)V
    .locals 1
    .param p1, "intensity"    # F

    .prologue
    .line 88
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 89
    const/high16 p1, 0x3f800000    # 1.0f

    .line 90
    :cond_0
    const v0, 0x3d4ccccd    # 0.05f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 91
    const p1, 0x3d4ccccd    # 0.05f

    .line 93
    :cond_1
    iput p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCubicIntensity:F

    .line 94
    return-void
.end method

.method public setDrawCircleHole(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 279
    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mDrawCircleHole:Z

    .line 280
    return-void
.end method

.method public setDrawCircles(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mDrawCircles:Z

    .line 156
    return-void
.end method

.method public setDrawCubic(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 170
    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mDrawCubic:Z

    .line 171
    return-void
.end method

.method public setFillFormatter(Lcom/github/mikephil/charting/formatter/FillFormatter;)V
    .locals 1
    .param p1, "formatter"    # Lcom/github/mikephil/charting/formatter/FillFormatter;

    .prologue
    .line 295
    if-nez p1, :cond_0

    .line 296
    new-instance v0, Lcom/github/mikephil/charting/formatter/DefaultFillFormatter;

    invoke-direct {v0}, Lcom/github/mikephil/charting/formatter/DefaultFillFormatter;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mFillFormatter:Lcom/github/mikephil/charting/formatter/FillFormatter;

    .line 299
    :goto_0
    return-void

    .line 298
    :cond_0
    iput-object p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mFillFormatter:Lcom/github/mikephil/charting/formatter/FillFormatter;

    goto :goto_0
.end method
