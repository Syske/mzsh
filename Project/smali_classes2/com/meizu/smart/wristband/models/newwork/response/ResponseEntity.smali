.class public Lcom/meizu/smart/wristband/models/newwork/response/ResponseEntity;
.super Ljava/lang/Object;
.source "ResponseEntity.java"


# instance fields
.field private data:Ljava/lang/String;

.field private msg:Ljava/lang/String;

.field private stateCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/ResponseEntity;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/ResponseEntity;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getStateCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/ResponseEntity;->stateCode:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/ResponseEntity;->data:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/ResponseEntity;->msg:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setStateCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "stateCode"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/ResponseEntity;->stateCode:Ljava/lang/String;

    .line 17
    return-void
.end method
