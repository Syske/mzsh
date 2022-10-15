.class public abstract Lcom/github/mikephil/charting/data/ChartData;
.super Ljava/lang/Object;
.source "ChartData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/github/mikephil/charting/interfaces/datasets/IDataSet",
        "<+",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mDataSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected mLeftAxisMax:F

.field protected mLeftAxisMin:F

.field protected mRightAxisMax:F

.field protected mRightAxisMin:F

.field private mXValAverageLength:F

.field protected mXVals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mYMax:F

.field protected mYMin:F

.field private mYValCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    .line 32
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    .line 34
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    .line 36
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    .line 38
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    .line 40
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValCount:I

    .line 51
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mXValAverageLength:F

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mXVals:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
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
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    .local p1, "xVals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    .line 32
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    .line 34
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    .line 36
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    .line 38
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    .line 40
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValCount:I

    .line 51
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mXValAverageLength:F

    .line 75
    iput-object p1, p0, Lcom/github/mikephil/charting/data/ChartData;->mXVals:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    .line 77
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/ChartData;->init()V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    .local p1, "xVals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sets":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    .line 32
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    .line 34
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    .line 36
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    .line 38
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    .line 40
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValCount:I

    .line 51
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mXValAverageLength:F

    .line 101
    iput-object p1, p0, Lcom/github/mikephil/charting/data/ChartData;->mXVals:Ljava/util/List;

    .line 102
    iput-object p2, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    .line 104
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/ChartData;->init()V

    .line 105
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 2
    .param p1, "xVals"    # [Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    .line 32
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    .line 34
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    .line 36
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    .line 38
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    .line 40
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValCount:I

    .line 51
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mXValAverageLength:F

    .line 87
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/data/ChartData;->arrayToList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mXVals:Ljava/util/List;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    .line 89
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/ChartData;->init()V

    .line 90
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "xVals"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    .local p2, "sets":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    .line 32
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    .line 34
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    .line 36
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    .line 38
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    .line 40
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValCount:I

    .line 51
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mXValAverageLength:F

    .line 116
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/data/ChartData;->arrayToList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mXVals:Ljava/util/List;

    .line 117
    iput-object p2, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    .line 119
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/ChartData;->init()V

    .line 120
    return-void
.end method

.method private arrayToList([Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "array"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private calcXValAverageLength()V
    .locals 3

    .prologue
    .line 150
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mXVals:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_0

    .line 151
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mXValAverageLength:F

    .line 162
    :goto_0
    return-void

    .line 155
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 157
    .local v1, "sum":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mXVals:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 158
    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mXVals:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 161
    :cond_1
    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mXVals:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v1, v2

    iput v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mXValAverageLength:F

    goto :goto_0
.end method

.method private checkLegal()V
    .locals 3

    .prologue
    .line 170
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    if-nez v1, :cond_1

    .line 182
    :cond_0
    return-void

    .line 173
    :cond_1
    instance-of v1, p0, Lcom/github/mikephil/charting/data/ScatterData;

    if-nez v1, :cond_0

    .line 176
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryCount()I

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mXVals:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 178
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "One or more of the DataSet Entry arrays are longer than the x-values array of this ChartData object."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 176
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static generateXVals(II)Ljava/util/List;
    .locals 4
    .param p0, "from"    # I
    .param p1, "to"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 819
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 821
    .local v1, "xvals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move v0, p0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 822
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 821
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 825
    :cond_0
    return-object v1
.end method

.method private handleEmptyAxis(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .prologue
    .line 552
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    .local p1, "firstLeft":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;, "TT;"
    .local p2, "firstRight":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;, "TT;"
    if-nez p1, :cond_1

    .line 553
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    .line 554
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    .line 559
    :cond_0
    :goto_0
    return-void

    .line 555
    :cond_1
    if-nez p2, :cond_0

    .line 556
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    .line 557
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    goto :goto_0
.end method


# virtual methods
.method public addDataSet(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 499
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    .local p1, "d":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;, "TT;"
    if-nez p1, :cond_0

    .line 541
    :goto_0
    return-void

    .line 502
    :cond_0
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValCount:I

    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryCount()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValCount:I

    .line 504
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_3

    .line 506
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getYMax()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    .line 507
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getYMin()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    .line 509
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v0, v1, :cond_2

    .line 511
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getYMax()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    .line 512
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getYMin()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    .line 538
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 540
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/ChartData;->getFirstLeft()Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/ChartData;->getFirstRight()Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/mikephil/charting/data/ChartData;->handleEmptyAxis(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)V

    goto :goto_0

    .line 514
    :cond_2
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getYMax()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    .line 515
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getYMin()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    goto :goto_1

    .line 519
    :cond_3
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getYMax()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 520
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getYMax()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    .line 521
    :cond_4
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getYMin()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    .line 522
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getYMin()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    .line 524
    :cond_5
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v0, v1, :cond_7

    .line 526
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getYMax()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    .line 527
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getYMax()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    .line 528
    :cond_6
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getYMin()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 529
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getYMin()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    goto :goto_1

    .line 531
    :cond_7
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getYMax()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_8

    .line 532
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getYMax()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    .line 533
    :cond_8
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getYMin()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 534
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getYMin()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    goto/16 :goto_1
.end method

.method public addEntry(Lcom/github/mikephil/charting/data/Entry;I)V
    .locals 4
    .param p1, "e"    # Lcom/github/mikephil/charting/data/Entry;
    .param p2, "dataSetIndex"    # I

    .prologue
    .line 611
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, p2, :cond_9

    if-ltz p2, :cond_9

    .line 613
    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    .line 615
    .local v0, "set":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    invoke-interface {v0, p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->addEntry(Lcom/github/mikephil/charting/data/Entry;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 660
    .end local v0    # "set":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    :goto_0
    return-void

    .line 618
    .restart local v0    # "set":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    :cond_0
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v1

    .line 620
    .local v1, "val":F
    iget v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValCount:I

    if-nez v2, :cond_3

    .line 621
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    .line 622
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    .line 624
    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v2

    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v2, v3, :cond_2

    .line 626
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v2

    iput v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    .line 627
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v2

    iput v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    .line 653
    :cond_1
    :goto_1
    iget v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValCount:I

    .line 655
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/ChartData;->getFirstLeft()Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v2

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/ChartData;->getFirstRight()Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/github/mikephil/charting/data/ChartData;->handleEmptyAxis(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)V

    goto :goto_0

    .line 629
    :cond_2
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v2

    iput v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    .line 630
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v2

    iput v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    goto :goto_1

    .line 634
    :cond_3
    iget v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    cmpg-float v2, v2, v1

    if-gez v2, :cond_4

    .line 635
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    .line 636
    :cond_4
    iget v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_5

    .line 637
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    .line 639
    :cond_5
    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v2

    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v2, v3, :cond_7

    .line 641
    iget v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6

    .line 642
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v2

    iput v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    .line 643
    :cond_6
    iget v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 644
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v2

    iput v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    goto :goto_1

    .line 646
    :cond_7
    iget v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_8

    .line 647
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v2

    iput v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    .line 648
    :cond_8
    iget v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 649
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v2

    iput v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    goto :goto_1

    .line 658
    .end local v0    # "set":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    .end local v1    # "val":F
    :cond_9
    const-string v2, "addEntry"

    const-string v3, "Cannot add Entry because dataSetIndex too high or too low."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public addXValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "xVal"    # Ljava/lang/String;

    .prologue
    .line 381
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mXValAverageLength:F

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mXValAverageLength:F

    .line 382
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mXVals:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    return-void
.end method

.method public calcMinMax(II)V
    .locals 9
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    const v8, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v7, 0x0

    .line 197
    iget-object v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_1

    .line 199
    :cond_0
    iput v7, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    .line 200
    iput v7, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    .line 264
    :goto_0
    return-void

    .line 203
    :cond_1
    iput v8, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    .line 204
    const v5, -0x800001

    iput v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    .line 206
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 208
    iget-object v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    .line 209
    .local v4, "set":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    invoke-interface {v4, p1, p2}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->calcMinMax(II)V

    .line 211
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getYMin()F

    move-result v5

    iget v6, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    .line 212
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getYMin()F

    move-result v5

    iput v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    .line 214
    :cond_2
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getYMax()F

    move-result v5

    iget v6, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    .line 215
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getYMax()F

    move-result v5

    iput v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    .line 206
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 218
    .end local v4    # "set":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    :cond_4
    iget v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    cmpl-float v5, v5, v8

    if-nez v5, :cond_5

    .line 219
    iput v7, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    .line 220
    iput v7, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    .line 224
    :cond_5
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/ChartData;->getFirstLeft()Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v1

    .line 226
    .local v1, "firstLeft":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;, "TT;"
    if-eqz v1, :cond_8

    .line 228
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getYMax()F

    move-result v5

    iput v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    .line 229
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getYMin()F

    move-result v5

    iput v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    .line 231
    iget-object v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    .line 232
    .local v0, "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v6

    sget-object v7, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v6, v7, :cond_6

    .line 233
    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getYMin()F

    move-result v6

    iget v7, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_7

    .line 234
    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getYMin()F

    move-result v6

    iput v6, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    .line 236
    :cond_7
    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getYMax()F

    move-result v6

    iget v7, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_6

    .line 237
    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getYMax()F

    move-result v6

    iput v6, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    goto :goto_2

    .line 243
    .end local v0    # "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    :cond_8
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/ChartData;->getFirstRight()Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v2

    .line 245
    .local v2, "firstRight":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;, "TT;"
    if-eqz v2, :cond_b

    .line 247
    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getYMax()F

    move-result v5

    iput v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    .line 248
    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getYMin()F

    move-result v5

    iput v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    .line 250
    iget-object v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    .line 251
    .restart local v0    # "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v6

    sget-object v7, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->RIGHT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v6, v7, :cond_9

    .line 252
    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getYMin()F

    move-result v6

    iget v7, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_a

    .line 253
    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getYMin()F

    move-result v6

    iput v6, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    .line 255
    :cond_a
    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getYMax()F

    move-result v6

    iget v7, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_9

    .line 256
    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getYMax()F

    move-result v6

    iput v6, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    goto :goto_3

    .line 262
    .end local v0    # "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    :cond_b
    invoke-direct {p0, v1, v2}, Lcom/github/mikephil/charting/data/ChartData;->handleEmptyAxis(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)V

    goto/16 :goto_0
.end method

.method protected calcYValueCount()V
    .locals 3

    .prologue
    .line 274
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    const/4 v2, 0x0

    iput v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValCount:I

    .line 276
    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    if-nez v2, :cond_0

    .line 286
    :goto_0
    return-void

    .line 279
    :cond_0
    const/4 v0, 0x0

    .line 281
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 282
    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryCount()I

    move-result v2

    add-int/2addr v0, v2

    .line 281
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 285
    :cond_1
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValCount:I

    goto :goto_0
.end method

.method public clearValues()V
    .locals 1

    .prologue
    .line 921
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 922
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/ChartData;->notifyDataChanged()V

    .line 923
    return-void
.end method

.method public contains(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 952
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    .local p1, "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;, "TT;"
    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    .line 953
    .local v0, "set":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;, "TT;"
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 954
    const/4 v1, 0x1

    .line 957
    .end local v0    # "set":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;, "TT;"
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getColors()[I
    .locals 8

    .prologue
    .line 747
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v6, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    if-nez v6, :cond_1

    .line 748
    const/4 v4, 0x0

    .line 769
    :cond_0
    return-object v4

    .line 750
    :cond_1
    const/4 v1, 0x0

    .line 752
    .local v1, "clrcnt":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v6, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 753
    iget-object v6, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    invoke-interface {v6}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getColors()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v1, v6

    .line 752
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 756
    :cond_2
    new-array v4, v1, [I

    .line 757
    .local v4, "colors":[I
    const/4 v3, 0x0

    .line 759
    .local v3, "cnt":I
    const/4 v5, 0x0

    :goto_1
    iget-object v6, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 761
    iget-object v6, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    invoke-interface {v6}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getColors()Ljava/util/List;

    move-result-object v2

    .line 763
    .local v2, "clrs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 764
    .local v0, "clr":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v4, v3

    .line 765
    add-int/lit8 v3, v3, 0x1

    .line 766
    goto :goto_2

    .line 759
    .end local v0    # "clr":Ljava/lang/Integer;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 486
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 487
    :cond_0
    const/4 v0, 0x0

    .line 489
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    goto :goto_0
.end method

.method public getDataSetByLabel(Ljava/lang/String;Z)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    .locals 2
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "ignorecase"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    .prologue
    .line 476
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-virtual {p0, v1, p1, p2}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetIndexByLabel(Ljava/util/List;Ljava/lang/String;Z)I

    move-result v0

    .line 478
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 479
    :cond_0
    const/4 v1, 0x0

    .line 481
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    goto :goto_0
.end method

.method public getDataSetCount()I
    .locals 1

    .prologue
    .line 296
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    if-nez v0, :cond_0

    .line 297
    const/4 v0, 0x0

    .line 298
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getDataSetForEntry(Lcom/github/mikephil/charting/data/Entry;)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    .locals 5
    .param p1, "e"    # Lcom/github/mikephil/charting/data/Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/mikephil/charting/data/Entry;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    const/4 v3, 0x0

    .line 723
    if-nez p1, :cond_1

    move-object v2, v3

    .line 736
    :cond_0
    :goto_0
    return-object v2

    .line 726
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 728
    iget-object v4, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    .line 730
    .local v2, "set":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;, "TT;"
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryCount()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 731
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v4

    invoke-interface {v2, v4}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/github/mikephil/charting/data/Entry;->equalTo(Lcom/github/mikephil/charting/data/Entry;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 730
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 726
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1    # "j":I
    .end local v2    # "set":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;, "TT;"
    :cond_3
    move-object v2, v3

    .line 736
    goto :goto_0
.end method

.method protected getDataSetIndexByLabel(Ljava/util/List;Ljava/lang/String;Z)I
    .locals 2
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "ignorecase"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/String;",
            "Z)I"
        }
    .end annotation

    .prologue
    .line 412
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    .local p1, "dataSets":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz p3, :cond_1

    .line 413
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 414
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    .line 422
    :goto_1
    return v1

    .line 413
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 417
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 418
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v0

    .line 419
    goto :goto_1

    .line 417
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 422
    :cond_3
    const/4 v1, -0x1

    goto :goto_1
.end method

.method protected getDataSetLabels()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 442
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 444
    .local v1, "types":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 445
    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getLabel()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 444
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 448
    :cond_0
    return-object v1
.end method

.method public getDataSets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 395
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    return-object v0
.end method

.method public getEntryForHighlight(Lcom/github/mikephil/charting/highlight/Highlight;)Lcom/github/mikephil/charting/data/Entry;
    .locals 2
    .param p1, "highlight"    # Lcom/github/mikephil/charting/highlight/Highlight;

    .prologue
    .line 458
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v0

    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 459
    const/4 v0, 0x0

    .line 461
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    .line 462
    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->getXIndex()I

    move-result v1

    .line 461
    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    goto :goto_0
.end method

.method public getFirstLeft()Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 788
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    .line 789
    .local v0, "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;, "TT;"
    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v2

    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v2, v3, :cond_0

    .line 793
    .end local v0    # "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;, "TT;"
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFirstRight()Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 803
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    .line 804
    .local v0, "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;, "TT;"
    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v2

    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->RIGHT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v2, v3, :cond_0

    .line 808
    .end local v0    # "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;, "TT;"
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIndexOfDataSet(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 773
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    .local p1, "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;, "TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 774
    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 778
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 773
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 778
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getXValAverageLength()F
    .locals 1

    .prologue
    .line 352
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mXValAverageLength:F

    return v0
.end method

.method public getXValCount()I
    .locals 1

    .prologue
    .line 432
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mXVals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getXVals()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 371
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mXVals:Ljava/util/List;

    return-object v0
.end method

.method public getYMax()F
    .locals 1

    .prologue
    .line 329
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    return v0
.end method

.method public getYMax(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F
    .locals 1
    .param p1, "axis"    # Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .prologue
    .line 339
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne p1, v0, :cond_0

    .line 340
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    .line 342
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    goto :goto_0
.end method

.method public getYMin()F
    .locals 1

    .prologue
    .line 307
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    return v0
.end method

.method public getYMin(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F
    .locals 1
    .param p1, "axis"    # Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .prologue
    .line 317
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne p1, v0, :cond_0

    .line 318
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    .line 320
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    goto :goto_0
.end method

.method public getYValCount()I
    .locals 1

    .prologue
    .line 362
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValCount:I

    return v0
.end method

.method protected init()V
    .locals 2

    .prologue
    .line 138
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    invoke-direct {p0}, Lcom/github/mikephil/charting/data/ChartData;->checkLegal()V

    .line 139
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/ChartData;->calcYValueCount()V

    .line 140
    const/4 v0, 0x0

    iget v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValCount:I

    invoke-virtual {p0, v0, v1}, Lcom/github/mikephil/charting/data/ChartData;->calcMinMax(II)V

    .line 142
    invoke-direct {p0}, Lcom/github/mikephil/charting/data/ChartData;->calcXValAverageLength()V

    .line 143
    return-void
.end method

.method public isHighlightEnabled()Z
    .locals 3

    .prologue
    .line 909
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    .line 910
    .local v0, "set":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->isHighlightEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 911
    const/4 v1, 0x0

    .line 913
    .end local v0    # "set":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public notifyDataChanged()V
    .locals 0

    .prologue
    .line 189
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/ChartData;->init()V

    .line 190
    return-void
.end method

.method public removeDataSet(I)Z
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 595
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    if-gez p1, :cond_1

    .line 596
    :cond_0
    const/4 v1, 0x0

    .line 599
    :goto_0
    return v1

    .line 598
    :cond_1
    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    .line 599
    .local v0, "set":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;, "TT;"
    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/data/ChartData;->removeDataSet(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)Z

    move-result v1

    goto :goto_0
.end method

.method public removeDataSet(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    .local p1, "d":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;, "TT;"
    const/4 v1, 0x0

    .line 570
    if-nez p1, :cond_1

    move v0, v1

    .line 583
    :cond_0
    :goto_0
    return v0

    .line 573
    :cond_1
    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 576
    .local v0, "removed":Z
    if-eqz v0, :cond_0

    .line 578
    iget v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValCount:I

    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryCount()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValCount:I

    .line 580
    iget v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValCount:I

    invoke-virtual {p0, v1, v2}, Lcom/github/mikephil/charting/data/ChartData;->calcMinMax(II)V

    goto :goto_0
.end method

.method public removeEntry(II)Z
    .locals 4
    .param p1, "xIndex"    # I
    .param p2, "dataSetIndex"    # I

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    const/4 v2, 0x0

    .line 702
    iget-object v3, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt p2, v3, :cond_1

    .line 711
    :cond_0
    :goto_0
    return v2

    .line 705
    :cond_1
    iget-object v3, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    .line 706
    .local v0, "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    invoke-interface {v0, p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v1

    .line 708
    .local v1, "e":Lcom/github/mikephil/charting/data/Entry;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 711
    invoke-virtual {p0, v1, p2}, Lcom/github/mikephil/charting/data/ChartData;->removeEntry(Lcom/github/mikephil/charting/data/Entry;I)Z

    move-result v2

    goto :goto_0
.end method

.method public removeEntry(Lcom/github/mikephil/charting/data/Entry;I)Z
    .locals 4
    .param p1, "e"    # Lcom/github/mikephil/charting/data/Entry;
    .param p2, "dataSetIndex"    # I

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    const/4 v2, 0x0

    .line 671
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt p2, v3, :cond_2

    :cond_0
    move v0, v2

    .line 688
    :cond_1
    :goto_0
    return v0

    .line 674
    :cond_2
    iget-object v3, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    .line 676
    .local v1, "set":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    if-eqz v1, :cond_3

    .line 678
    invoke-interface {v1, p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->removeEntry(Lcom/github/mikephil/charting/data/Entry;)Z

    move-result v0

    .line 680
    .local v0, "removed":Z
    if-eqz v0, :cond_1

    .line 681
    iget v3, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValCount:I

    .line 683
    iget v3, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValCount:I

    invoke-virtual {p0, v2, v3}, Lcom/github/mikephil/charting/data/ChartData;->calcMinMax(II)V

    goto :goto_0

    .end local v0    # "removed":Z
    :cond_3
    move v0, v2

    .line 688
    goto :goto_0
.end method

.method public removeXValue(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 391
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mXVals:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 392
    return-void
.end method

.method public setDrawValues(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 886
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    .line 887
    .local v0, "set":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    invoke-interface {v0, p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->setDrawValues(Z)V

    goto :goto_0

    .line 889
    .end local v0    # "set":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    :cond_0
    return-void
.end method

.method public setHighlightEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 897
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    .line 898
    .local v0, "set":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    invoke-interface {v0, p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->setHighlightEnabled(Z)V

    goto :goto_0

    .line 900
    .end local v0    # "set":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    :cond_0
    return-void
.end method

.method public setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V
    .locals 3
    .param p1, "f"    # Lcom/github/mikephil/charting/formatter/ValueFormatter;

    .prologue
    .line 834
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    if-nez p1, :cond_1

    .line 841
    :cond_0
    return-void

    .line 837
    :cond_1
    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    .line 838
    .local v0, "set":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    invoke-interface {v0, p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    goto :goto_0
.end method

.method public setValueTextColor(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 850
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    .line 851
    .local v0, "set":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    invoke-interface {v0, p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->setValueTextColor(I)V

    goto :goto_0

    .line 853
    .end local v0    # "set":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    :cond_0
    return-void
.end method

.method public setValueTextSize(F)V
    .locals 3
    .param p1, "size"    # F

    .prologue
    .line 874
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    .line 875
    .local v0, "set":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    invoke-interface {v0, p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->setValueTextSize(F)V

    goto :goto_0

    .line 877
    .end local v0    # "set":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    :cond_0
    return-void
.end method

.method public setValueTypeface(Landroid/graphics/Typeface;)V
    .locals 3
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .prologue
    .line 862
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    .line 863
    .local v0, "set":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    invoke-interface {v0, p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->setValueTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 865
    .end local v0    # "set":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    :cond_0
    return-void
.end method
