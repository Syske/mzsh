.class public Lcom/meizu/smart/wristband/models/newwork/request/CommitUserInfo;
.super Ljava/lang/Object;
.source "CommitUserInfo.java"


# instance fields
.field private address:Ljava/lang/String;

.field private birthday:Ljava/lang/String;

.field private height:I

.field private nickname:Ljava/lang/String;

.field private portraitUrl:Ljava/lang/String;

.field private sexCode:I

.field private username:Ljava/lang/String;

.field private weight:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitUserInfo;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitUserInfo;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitUserInfo;->height:I

    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitUserInfo;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getPortraitUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitUserInfo;->portraitUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSexCode()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitUserInfo;->sexCode:I

    return v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitUserInfo;->username:Ljava/lang/String;

    return-object v0
.end method

.method public getWeight()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitUserInfo;->weight:I

    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitUserInfo;->address:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setBirthday(Ljava/lang/String;)V
    .locals 0
    .param p1, "birthday"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitUserInfo;->birthday:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitUserInfo;->height:I

    .line 55
    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0
    .param p1, "nickname"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitUserInfo;->nickname:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setPortraitUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "portraitUrl"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitUserInfo;->portraitUrl:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setSexCode(I)V
    .locals 0
    .param p1, "sexCode"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitUserInfo;->sexCode:I

    .line 39
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitUserInfo;->username:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setWeight(I)V
    .locals 0
    .param p1, "weight"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitUserInfo;->weight:I

    .line 63
    return-void
.end method
