.class public Lcom/meizu/smart/wristband/models/newwork/request/Login;
.super Ljava/lang/Object;
.source "Login.java"


# instance fields
.field private passwd:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPasswd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/Login;->passwd:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/Login;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setPasswd(Ljava/lang/String;)V
    .locals 0
    .param p1, "passwd"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/Login;->passwd:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/Login;->username:Ljava/lang/String;

    .line 16
    return-void
.end method
