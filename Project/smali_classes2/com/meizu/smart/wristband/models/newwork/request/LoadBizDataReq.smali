.class public Lcom/meizu/smart/wristband/models/newwork/request/LoadBizDataReq;
.super Ljava/lang/Object;
.source "LoadBizDataReq.java"


# instance fields
.field private endDate:Ljava/lang/String;

.field private startDate:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/LoadBizDataReq;->endDate:Ljava/lang/String;

    return-object v0
.end method

.method public getStartDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/LoadBizDataReq;->startDate:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/LoadBizDataReq;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setEndDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "endDate"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/LoadBizDataReq;->endDate:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setStartDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "startDate"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/LoadBizDataReq;->startDate:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/LoadBizDataReq;->username:Ljava/lang/String;

    .line 17
    return-void
.end method
