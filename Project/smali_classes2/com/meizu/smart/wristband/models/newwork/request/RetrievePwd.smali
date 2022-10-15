.class public Lcom/meizu/smart/wristband/models/newwork/request/RetrievePwd;
.super Ljava/lang/Object;
.source "RetrievePwd.java"


# instance fields
.field newPasswrod:Ljava/lang/String;

.field pin:Ljava/lang/String;

.field username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNewPasswrod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/RetrievePwd;->newPasswrod:Ljava/lang/String;

    return-object v0
.end method

.method public getPin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/RetrievePwd;->pin:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/RetrievePwd;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setNewPasswrod(Ljava/lang/String;)V
    .locals 0
    .param p1, "newPasswrod"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/RetrievePwd;->newPasswrod:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setPin(Ljava/lang/String;)V
    .locals 0
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/RetrievePwd;->pin:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/RetrievePwd;->username:Ljava/lang/String;

    .line 18
    return-void
.end method
