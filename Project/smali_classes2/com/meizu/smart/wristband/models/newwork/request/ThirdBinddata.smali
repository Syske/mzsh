.class public Lcom/meizu/smart/wristband/models/newwork/request/ThirdBinddata;
.super Ljava/lang/Object;
.source "ThirdBinddata.java"


# instance fields
.field private appid:Ljava/lang/String;

.field private gtype:Ljava/lang/String;

.field private openid:Ljava/lang/String;

.field private tokenkey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/ThirdBinddata;->appid:Ljava/lang/String;

    return-object v0
.end method

.method public getGtype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/ThirdBinddata;->gtype:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/ThirdBinddata;->openid:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenkey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/ThirdBinddata;->tokenkey:Ljava/lang/String;

    return-object v0
.end method

.method public setAppid(Ljava/lang/String;)V
    .locals 0
    .param p1, "appid"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/ThirdBinddata;->appid:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setGtype(Ljava/lang/String;)V
    .locals 0
    .param p1, "gtype"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/ThirdBinddata;->gtype:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setOpenid(Ljava/lang/String;)V
    .locals 0
    .param p1, "openid"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/ThirdBinddata;->openid:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setTokenkey(Ljava/lang/String;)V
    .locals 0
    .param p1, "tokenkey"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/ThirdBinddata;->tokenkey:Ljava/lang/String;

    .line 32
    return-void
.end method
