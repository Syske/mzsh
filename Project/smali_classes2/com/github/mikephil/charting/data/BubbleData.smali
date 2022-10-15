.class public Lcom/github/mikephil/charting/data/BubbleData;
.super Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;
.source "BubbleData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData",
        "<",
        "Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p1, "xVals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;-><init>(Ljava/util/List;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;)V
    .locals 1
    .param p2, "dataSet"    # Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "xVals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p2}, Lcom/github/mikephil/charting/data/BubbleData;->toList(Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "xVals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;>;"
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 25
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 0
    .param p1, "xVals"    # [Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;-><init>([Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;)V
    .locals 1
    .param p1, "xVals"    # [Ljava/lang/String;
    .param p2, "dataSet"    # Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;

    .prologue
    .line 36
    invoke-static {p2}, Lcom/github/mikephil/charting/data/BubbleData;->toList(Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;-><init>([Ljava/lang/String;Ljava/util/List;)V

    .line 37
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "xVals"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p2, "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;>;"
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;-><init>([Ljava/lang/String;Ljava/util/List;)V

    .line 29
    return-void
.end method

.method private static toList(Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;)Ljava/util/List;
    .locals 1
    .param p0, "dataSet"    # Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v0, "sets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    return-object v0
.end method


# virtual methods
.method public setHighlightCircleWidth(F)V
    .locals 3
    .param p1, "width"    # F

    .prologue
    .line 52
    iget-object v1, p0, Lcom/github/mikephil/charting/data/BubbleData;->mDataSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;

    .line 53
    .local v0, "set":Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;
    invoke-interface {v0, p1}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->setHighlightCircleWidth(F)V

    goto :goto_0

    .line 55
    .end local v0    # "set":Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;
    :cond_0
    return-void
.end method
