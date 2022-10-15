.class public Lcom/meizu/smart/wristband/models/newwork/response/GetGolddata;
.super Ljava/lang/Object;
.source "GetGolddata.java"


# instance fields
.field private count:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private dayGold:I

.field private detail:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/Golddetaildata;",
            ">;"
        }
    .end annotation
.end field

.field private gdate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 34
    iget v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/GetGolddata;->count:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getDayGold()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/GetGolddata;->dayGold:I

    return v0
.end method

.method public getDetail()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/Golddetaildata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/GetGolddata;->detail:Ljava/util/List;

    return-object v0
.end method

.method public getGdate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/GetGolddata;->gdate:Ljava/lang/String;

    return-object v0
.end method

.method public setCount(I)V
    .locals 0
    .param p1, "count"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 29
    iput p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/GetGolddata;->count:I

    .line 30
    return-void
.end method

.method public setDayGold(I)V
    .locals 0
    .param p1, "dayGold"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/GetGolddata;->dayGold:I

    .line 51
    return-void
.end method

.method public setDetail(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/Golddetaildata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "detail":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/newwork/response/Golddetaildata;>;"
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/GetGolddata;->detail:Ljava/util/List;

    .line 43
    return-void
.end method

.method public setGdate(Ljava/lang/String;)V
    .locals 0
    .param p1, "gdate"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/GetGolddata;->gdate:Ljava/lang/String;

    .line 25
    return-void
.end method
