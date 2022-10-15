.class public Lcom/meizu/smart/wristband/models/newwork/response/GoldListdata;
.super Ljava/lang/Object;
.source "GoldListdata.java"


# instance fields
.field private every:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/GetGolddata;",
            ">;"
        }
    .end annotation
.end field

.field private total:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEvery()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/GetGolddata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/GoldListdata;->every:Ljava/util/List;

    return-object v0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/GoldListdata;->total:I

    return v0
.end method

.method public setEvery(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/GetGolddata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, "every":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/newwork/response/GetGolddata;>;"
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/GoldListdata;->every:Ljava/util/List;

    .line 26
    return-void
.end method

.method public setTotal(I)V
    .locals 0
    .param p1, "total"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/GoldListdata;->total:I

    .line 20
    return-void
.end method
