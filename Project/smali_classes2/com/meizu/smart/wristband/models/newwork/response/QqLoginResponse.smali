.class public Lcom/meizu/smart/wristband/models/newwork/response/QqLoginResponse;
.super Ljava/lang/Object;
.source "QqLoginResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/models/newwork/response/QqLoginResponse$UserInfo;
    }
.end annotation


# instance fields
.field private access_token:Ljava/lang/String;

.field private authority_cost:J

.field private expires_in:Ljava/lang/String;

.field private login_cost:J

.field private msg:Ljava/lang/String;

.field private openid:Ljava/lang/String;

.field private pay_token:Ljava/lang/String;

.field private pf:Ljava/lang/String;

.field private pfkey:Ljava/lang/String;

.field private query_authority_cost:J

.field private ret:I

.field private userInfo:Lcom/meizu/smart/wristband/models/newwork/response/QqLoginResponse$UserInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    return-void
.end method


# virtual methods
.method public getAccess_token()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/QqLoginResponse;->access_token:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthority_cost()J
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/QqLoginResponse;->authority_cost:J

    return-wide v0
.end method

.method public getExpires_in()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/QqLoginResponse;->expires_in:Ljava/lang/String;

    return-object v0
.end method

.method public getLogin_cost()J
    .locals 2

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/QqLoginResponse;->login_cost:J

    return-wide v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/QqLoginResponse;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/QqLoginResponse;->openid:Ljava/lang/String;

    return-object v0
.end method

.method public getPay_token()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/QqLoginResponse;->pay_token:Ljava/lang/String;

    return-object v0
.end method

.method public getPf()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/QqLoginResponse;->pf:Ljava/lang/String;

    return-object v0
.end method

.method public getPfkey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/QqLoginResponse;->pfkey:Ljava/lang/String;

    return-object v0
.end method

.method public getQuery_authority_cost()J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/QqLoginResponse;->query_authority_cost:J

    return-wide v0
.end method

.method public getRet()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/QqLoginResponse;->ret:I

    return v0
.end method

.method public getUserInfo()Lcom/meizu/smart/wristband/models/newwork/response/QqLoginResponse$UserInfo;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/QqLoginResponse;->userInfo:Lcom/meizu/smart/wristband/models/newwork/response/QqLoginResponse$UserInfo;

    return-object v0
.end method

.method public setAccess_token(Ljava/lang/String;)V
    .locals 0
    .param p1, "access_token"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/QqLoginResponse;->access_token:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setAuthority_cost(J)V
    .locals 1
    .param p1, "authority_cost"    # J

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/QqLoginResponse;->authority_cost:J

    .line 59
    return-void
.end method

.method public setExpires_in(Ljava/lang/String;)V
    .locals 0
    .param p1, "expires_in"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/QqLoginResponse;->expires_in:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setLogin_cost(J)V
    .locals 1
    .param p1, "login_cost"    # J

    .prologue
    .line 106
    iput-wide p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/QqLoginResponse;->login_cost:J

    .line 107
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/QqLoginResponse;->msg:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setOpenid(Ljava/lang/String;)V
    .locals 0
    .param p1, "openid"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/QqLoginResponse;->openid:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setPay_token(Ljava/lang/String;)V
    .locals 0
    .param p1, "pay_token"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/QqLoginResponse;->pay_token:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setPf(Ljava/lang/String;)V
    .locals 0
    .param p1, "pf"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/QqLoginResponse;->pf:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setPfkey(Ljava/lang/String;)V
    .locals 0
    .param p1, "pfkey"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/QqLoginResponse;->pfkey:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setQuery_authority_cost(J)V
    .locals 1
    .param p1, "query_authority_cost"    # J

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/QqLoginResponse;->query_authority_cost:J

    .line 51
    return-void
.end method

.method public setRet(I)V
    .locals 0
    .param p1, "ret"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/QqLoginResponse;->ret:I

    .line 27
    return-void
.end method

.method public setUserInfo(Lcom/meizu/smart/wristband/models/newwork/response/QqLoginResponse$UserInfo;)V
    .locals 0
    .param p1, "userInfo"    # Lcom/meizu/smart/wristband/models/newwork/response/QqLoginResponse$UserInfo;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/QqLoginResponse;->userInfo:Lcom/meizu/smart/wristband/models/newwork/response/QqLoginResponse$UserInfo;

    .line 115
    return-void
.end method
