.class public Lcom/github/mikephil/charting/data/PieData;
.super Lcom/github/mikephil/charting/data/ChartData;
.source "PieData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/data/ChartData",
        "<",
        "Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/github/mikephil/charting/data/ChartData;-><init>()V

    .line 21
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
    .line 24
    .local p1, "xVals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/data/ChartData;-><init>(Ljava/util/List;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;)V
    .locals 1
    .param p2, "dataSet"    # Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "xVals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p2}, Lcom/github/mikephil/charting/data/PieData;->toList(Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/github/mikephil/charting/data/ChartData;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 33
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 0
    .param p1, "xVals"    # [Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/data/ChartData;-><init>([Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;)V
    .locals 1
    .param p1, "xVals"    # [Ljava/lang/String;
    .param p2, "dataSet"    # Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    .prologue
    .line 36
    invoke-static {p2}, Lcom/github/mikephil/charting/data/PieData;->toList(Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/github/mikephil/charting/data/ChartData;-><init>([Ljava/lang/String;Ljava/util/List;)V

    .line 37
    return-void
.end method

.method private static toList(Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;)Ljava/util/List;
    .locals 1
    .param p0, "dataSet"    # Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v0, "sets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    return-object v0
.end method


# virtual methods
.method public getDataSet()Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/github/mikephil/charting/data/PieData;->mDataSets:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    return-object v0
.end method

.method public bridge synthetic getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/data/PieData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    move-result-object v0

    return-object v0
.end method

.method public getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 68
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/PieData;->getDataSet()Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getDataSetByLabel(Ljava/lang/String;Z)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/github/mikephil/charting/data/PieData;->getDataSetByLabel(Ljava/lang/String;Z)Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    move-result-object v0

    return-object v0
.end method

.method public getDataSetByLabel(Ljava/lang/String;Z)Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;
    .locals 3
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "ignorecase"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 73
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/github/mikephil/charting/data/PieData;->mDataSets:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/data/PieData;->mDataSets:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    .line 74
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 73
    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/data/PieData;->mDataSets:Ljava/util/List;

    .line 74
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/github/mikephil/charting/data/PieData;->mDataSets:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public getYValueSum()F
    .locals 3

    .prologue
    .line 84
    const/4 v1, 0x0

    .line 86
    .local v1, "sum":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/PieData;->getDataSet()Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    move-result-object v2

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/PieData;->getDataSet()Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v2

    add-float/2addr v1, v2

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_0
    return v1
.end method

.method public setDataSet(Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;)V
    .locals 1
    .param p1, "dataSet"    # Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/github/mikephil/charting/data/PieData;->mDataSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 52
    iget-object v0, p0, Lcom/github/mikephil/charting/data/PieData;->mDataSets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/PieData;->init()V

    .line 54
    return-void
.end method
