.class public Lcom/github/mikephil/charting/data/realm/implementation/RealmRadarDataSet;
.super Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet;
.source "RealmRadarDataSet.java"

# interfaces
.implements Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lio/realm/RealmObject;",
        ">",
        "Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet",
        "<TT;>;",
        "Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lio/realm/RealmResults;Ljava/lang/String;)V
    .locals 2
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
    .line 23
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmRadarDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmRadarDataSet<TT;>;"
    .local p1, "result":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet;-><init>(Lio/realm/RealmResults;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmRadarDataSet;->results:Lio/realm/RealmResults;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/data/realm/implementation/RealmRadarDataSet;->build(Lio/realm/RealmResults;)V

    .line 26
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmRadarDataSet;->results:Lio/realm/RealmResults;

    invoke-virtual {v1}, Lio/realm/RealmResults;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/github/mikephil/charting/data/realm/implementation/RealmRadarDataSet;->calcMinMax(II)V

    .line 27
    return-void
.end method

.method public constructor <init>(Lio/realm/RealmResults;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
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
    .line 38
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmRadarDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmRadarDataSet<TT;>;"
    .local p1, "result":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet;-><init>(Lio/realm/RealmResults;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmRadarDataSet;->results:Lio/realm/RealmResults;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/data/realm/implementation/RealmRadarDataSet;->build(Lio/realm/RealmResults;)V

    .line 41
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmRadarDataSet;->results:Lio/realm/RealmResults;

    invoke-virtual {v1}, Lio/realm/RealmResults;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/github/mikephil/charting/data/realm/implementation/RealmRadarDataSet;->calcMinMax(II)V

    .line 42
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
    .line 46
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmRadarDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmRadarDataSet<TT;>;"
    .local p1, "results":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TT;>;"
    invoke-super {p0, p1}, Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet;->build(Lio/realm/RealmResults;)V

    .line 47
    return-void
.end method
