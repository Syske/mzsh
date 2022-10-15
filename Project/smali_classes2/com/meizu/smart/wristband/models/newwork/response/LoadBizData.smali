.class public Lcom/meizu/smart/wristband/models/newwork/response/LoadBizData;
.super Ljava/lang/Object;
.source "LoadBizData.java"


# instance fields
.field private dayHeartrates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/HeartDay;",
            ">;"
        }
    .end annotation
.end field

.field private golds:Lcom/meizu/smart/wristband/models/newwork/response/GoldListdata;

.field private rtsports:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/SportListDataReal;",
            ">;"
        }
    .end annotation
.end field

.field private sleeps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;",
            ">;"
        }
    .end annotation
.end field

.field private sports:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/SportListdata;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDayHeartrates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/HeartDay;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/LoadBizData;->dayHeartrates:Ljava/util/List;

    return-object v0
.end method

.method public getGolds()Lcom/meizu/smart/wristband/models/newwork/response/GoldListdata;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/LoadBizData;->golds:Lcom/meizu/smart/wristband/models/newwork/response/GoldListdata;

    return-object v0
.end method

.method public getRtsports()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/SportListDataReal;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/LoadBizData;->rtsports:Ljava/util/List;

    return-object v0
.end method

.method public getSleeps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/LoadBizData;->sleeps:Ljava/util/List;

    return-object v0
.end method

.method public getSports()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/SportListdata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/LoadBizData;->sports:Ljava/util/List;

    return-object v0
.end method

.method public setDayHeartrates(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/HeartDay;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "dayHeartrates":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/newwork/response/HeartDay;>;"
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/LoadBizData;->dayHeartrates:Ljava/util/List;

    .line 54
    return-void
.end method

.method public setGolds(Lcom/meizu/smart/wristband/models/newwork/response/GoldListdata;)V
    .locals 0
    .param p1, "golds"    # Lcom/meizu/smart/wristband/models/newwork/response/GoldListdata;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/LoadBizData;->golds:Lcom/meizu/smart/wristband/models/newwork/response/GoldListdata;

    .line 38
    return-void
.end method

.method public setRtsports(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/SportListDataReal;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "rtsports":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/newwork/response/SportListDataReal;>;"
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/LoadBizData;->rtsports:Ljava/util/List;

    .line 46
    return-void
.end method

.method public setSleeps(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, "sleeps":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;>;"
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/LoadBizData;->sleeps:Ljava/util/List;

    .line 22
    return-void
.end method

.method public setSports(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/SportListdata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "sports":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/newwork/response/SportListdata;>;"
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/LoadBizData;->sports:Ljava/util/List;

    .line 30
    return-void
.end method
