.class public Lcom/meizu/smart/wristband/models/newwork/response/ShareGetdata;
.super Ljava/lang/Object;
.source "ShareGetdata.java"


# instance fields
.field gevent:Ljava/lang/String;

.field gold:I

.field gtime:Ljava/lang/String;

.field gtype:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGevent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/ShareGetdata;->gevent:Ljava/lang/String;

    return-object v0
.end method

.method public getGold()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/ShareGetdata;->gold:I

    return v0
.end method

.method public getGtime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/ShareGetdata;->gtime:Ljava/lang/String;

    return-object v0
.end method

.method public getGtype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/ShareGetdata;->gtype:Ljava/lang/String;

    return-object v0
.end method

.method public setGevent(Ljava/lang/String;)V
    .locals 0
    .param p1, "gevent"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/ShareGetdata;->gevent:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setGold(I)V
    .locals 0
    .param p1, "gold"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/ShareGetdata;->gold:I

    .line 44
    return-void
.end method

.method public setGtime(Ljava/lang/String;)V
    .locals 0
    .param p1, "gtime"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/ShareGetdata;->gtime:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setGtype(Ljava/lang/String;)V
    .locals 0
    .param p1, "gtype"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/ShareGetdata;->gtype:Ljava/lang/String;

    .line 20
    return-void
.end method
