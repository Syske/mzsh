.class public Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;
.super Lcom/github/mikephil/charting/buffer/AbstractBuffer;
.source "CandleBodyBuffer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/buffer/AbstractBuffer",
        "<",
        "Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;",
        ">;"
    }
.end annotation


# instance fields
.field private mBodySpace:F


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/buffer/AbstractBuffer;-><init>(I)V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->mBodySpace:F

    .line 13
    return-void
.end method

.method private addBody(FFFF)V
    .locals 3
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 21
    iget-object v0, p0, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->buffer:[F

    iget v1, p0, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->index:I

    aput p1, v0, v1

    .line 22
    iget-object v0, p0, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->buffer:[F

    iget v1, p0, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->index:I

    aput p2, v0, v1

    .line 23
    iget-object v0, p0, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->buffer:[F

    iget v1, p0, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->index:I

    aput p3, v0, v1

    .line 24
    iget-object v0, p0, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->buffer:[F

    iget v1, p0, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->index:I

    aput p4, v0, v1

    .line 25
    return-void
.end method


# virtual methods
.method public feed(Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;)V
    .locals 9
    .param p1, "data"    # Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;

    .prologue
    const/high16 v8, 0x3f000000    # 0.5f

    .line 30
    iget v3, p0, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->mTo:I

    iget v4, p0, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->mFrom:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->phaseX:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->mFrom:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 32
    .local v2, "size":I
    iget v1, p0, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->mFrom:I

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 34
    invoke-interface {p1, v1}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/CandleEntry;

    .line 35
    .local v0, "e":Lcom/github/mikephil/charting/data/CandleEntry;
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleEntry;->getXIndex()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v8

    iget v4, p0, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->mBodySpace:F

    add-float/2addr v3, v4

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleEntry;->getClose()F

    move-result v4

    iget v5, p0, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->phaseY:F

    mul-float/2addr v4, v5

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleEntry;->getXIndex()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v8

    iget v6, p0, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->mBodySpace:F

    sub-float/2addr v5, v6

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleEntry;->getOpen()F

    move-result v6

    iget v7, p0, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->phaseY:F

    mul-float/2addr v6, v7

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->addBody(FFFF)V

    .line 32
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    .end local v0    # "e":Lcom/github/mikephil/charting/data/CandleEntry;
    :cond_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->reset()V

    .line 39
    return-void
.end method

.method public bridge synthetic feed(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 7
    check-cast p1, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->feed(Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;)V

    return-void
.end method

.method public setBodySpace(F)V
    .locals 0
    .param p1, "bodySpace"    # F

    .prologue
    .line 16
    iput p1, p0, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->mBodySpace:F

    .line 17
    return-void
.end method
