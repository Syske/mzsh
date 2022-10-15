.class public Lcom/meizu/smart/wristband/models/newwork/response/QrCodeData;
.super Ljava/lang/Object;
.source "QrCodeData.java"


# instance fields
.field private result:Ljava/lang/String;

.field private status:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/QrCodeData;->result:Ljava/lang/String;

    return-object v0
.end method

.method public isStatus()Z
    .locals 1

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/QrCodeData;->status:Z

    return v0
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/QrCodeData;->result:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setStatus(Z)V
    .locals 0
    .param p1, "status"    # Z

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/QrCodeData;->status:Z

    .line 16
    return-void
.end method
