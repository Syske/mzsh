.class public Lcom/meizu/smart/wristband/models/newwork/request/CommitQrCode;
.super Ljava/lang/Object;
.source "CommitQrCode.java"


# instance fields
.field private did:Ljava/lang/String;

.field private mac:Ljava/lang/String;

.field private operate:Ljava/lang/String;

.field private productid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitQrCode;->did:Ljava/lang/String;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitQrCode;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getOperate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitQrCode;->operate:Ljava/lang/String;

    return-object v0
.end method

.method public getProductid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitQrCode;->productid:Ljava/lang/String;

    return-object v0
.end method

.method public setDid(Ljava/lang/String;)V
    .locals 0
    .param p1, "did"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitQrCode;->did:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitQrCode;->mac:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setOperate(Ljava/lang/String;)V
    .locals 0
    .param p1, "operate"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitQrCode;->operate:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setProductid(Ljava/lang/String;)V
    .locals 0
    .param p1, "productid"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitQrCode;->productid:Ljava/lang/String;

    .line 42
    return-void
.end method
