.class public Lcom/meizu/smart/wristband/models/newwork/response/Responobj;
.super Ljava/lang/Object;
.source "Responobj.java"


# instance fields
.field private data:Ljava/lang/Object;

.field private msg:Ljava/lang/String;

.field private stateCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/Responobj;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/Responobj;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getStateCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/Responobj;->stateCode:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/Responobj;->data:Ljava/lang/Object;

    .line 29
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/Responobj;->msg:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setStateCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "stateCode"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/Responobj;->stateCode:Ljava/lang/String;

    .line 17
    return-void
.end method
