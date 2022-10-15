.class public Lcom/github/mikephil/charting/buffer/CircleBuffer;
.super Lcom/github/mikephil/charting/buffer/AbstractBuffer;
.source "CircleBuffer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/buffer/AbstractBuffer",
        "<",
        "Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/buffer/AbstractBuffer;-><init>(I)V

    .line 11
    return-void
.end method


# virtual methods
.method protected addCircle(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 14
    iget-object v0, p0, Lcom/github/mikephil/charting/buffer/CircleBuffer;->buffer:[F

    iget v1, p0, Lcom/github/mikephil/charting/buffer/CircleBuffer;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/github/mikephil/charting/buffer/CircleBuffer;->index:I

    aput p1, v0, v1

    .line 15
    iget-object v0, p0, Lcom/github/mikephil/charting/buffer/CircleBuffer;->buffer:[F

    iget v1, p0, Lcom/github/mikephil/charting/buffer/CircleBuffer;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/github/mikephil/charting/buffer/CircleBuffer;->index:I

    aput p2, v0, v1

    .line 16
    return-void
.end method

.method public feed(Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V
    .locals 6
    .param p1, "data"    # Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

    .prologue
    .line 21
    iget v3, p0, Lcom/github/mikephil/charting/buffer/CircleBuffer;->mTo:I

    iget v4, p0, Lcom/github/mikephil/charting/buffer/CircleBuffer;->mFrom:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/github/mikephil/charting/buffer/CircleBuffer;->phaseX:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/github/mikephil/charting/buffer/CircleBuffer;->mFrom:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 23
    .local v2, "size":I
    iget v1, p0, Lcom/github/mikephil/charting/buffer/CircleBuffer;->mFrom:I

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 25
    invoke-interface {p1, v1}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    .line 26
    .local v0, "e":Lcom/github/mikephil/charting/data/Entry;
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v4

    iget v5, p0, Lcom/github/mikephil/charting/buffer/CircleBuffer;->phaseY:F

    mul-float/2addr v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/github/mikephil/charting/buffer/CircleBuffer;->addCircle(FF)V

    .line 23
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 29
    .end local v0    # "e":Lcom/github/mikephil/charting/data/Entry;
    :cond_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/buffer/CircleBuffer;->reset()V

    .line 30
    return-void
.end method

.method public bridge synthetic feed(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 7
    check-cast p1, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/buffer/CircleBuffer;->feed(Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V

    return-void
.end method
