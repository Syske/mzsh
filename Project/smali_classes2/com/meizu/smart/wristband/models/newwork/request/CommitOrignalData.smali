.class public Lcom/meizu/smart/wristband/models/newwork/request/CommitOrignalData;
.super Ljava/lang/Object;
.source "CommitOrignalData.java"


# instance fields
.field private acts:Ljava/lang/String;

.field private heartRates:Ljava/lang/String;

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
.method public getActs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitOrignalData;->acts:Ljava/lang/String;

    return-object v0
.end method

.method public getHeartRates()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitOrignalData;->heartRates:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitOrignalData;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setActs(Ljava/lang/String;)V
    .locals 0
    .param p1, "acts"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitOrignalData;->acts:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setHeartRates(Ljava/lang/String;)V
    .locals 0
    .param p1, "heartRates"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitOrignalData;->heartRates:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitOrignalData;->username:Ljava/lang/String;

    .line 17
    return-void
.end method
