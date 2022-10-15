.class public Lcom/meizu/smart/wristband/models/newwork/response/ResponseRegistEntity;
.super Ljava/lang/Object;
.source "ResponseRegistEntity.java"


# instance fields
.field private msg:Ljava/lang/String;

.field private stateCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/ResponseRegistEntity;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getStateCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/ResponseRegistEntity;->stateCode:Ljava/lang/String;

    return-object v0
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/ResponseRegistEntity;->msg:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setStateCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "stateCode"    # Ljava/lang/String;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/ResponseRegistEntity;->stateCode:Ljava/lang/String;

    .line 15
    return-void
.end method
