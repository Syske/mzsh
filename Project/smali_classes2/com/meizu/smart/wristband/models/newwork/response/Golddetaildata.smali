.class public Lcom/meizu/smart/wristband/models/newwork/response/Golddetaildata;
.super Ljava/lang/Object;
.source "Golddetaildata.java"


# instance fields
.field private gevent:Ljava/lang/String;

.field private gold:I

.field private gtime:Ljava/lang/String;

.field private gtype:Ljava/lang/String;


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
    .line 28
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/Golddetaildata;->gevent:Ljava/lang/String;

    return-object v0
.end method

.method public getGold()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/Golddetaildata;->gold:I

    return v0
.end method

.method public getGtime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/Golddetaildata;->gtime:Ljava/lang/String;

    return-object v0
.end method

.method public getGtype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/Golddetaildata;->gtype:Ljava/lang/String;

    return-object v0
.end method

.method public setGevent(Ljava/lang/String;)V
    .locals 0
    .param p1, "gevent"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/Golddetaildata;->gevent:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setGold(I)V
    .locals 0
    .param p1, "gold"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/Golddetaildata;->gold:I

    .line 38
    return-void
.end method

.method public setGtime(Ljava/lang/String;)V
    .locals 0
    .param p1, "gtime"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/Golddetaildata;->gtime:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setGtype(Ljava/lang/String;)V
    .locals 0
    .param p1, "gtype"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/Golddetaildata;->gtype:Ljava/lang/String;

    .line 20
    return-void
.end method
