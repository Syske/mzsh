.class public Lcom/meizu/smart/wristband/models/newwork/request/Register;
.super Ljava/lang/Object;
.source "Register.java"


# instance fields
.field private email:Ljava/lang/String;

.field gtype:I

.field private passwd:Ljava/lang/String;

.field private pin:Ljava/lang/String;

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
.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/Register;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getGtype()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/Register;->gtype:I

    return v0
.end method

.method public getPasswd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/Register;->passwd:Ljava/lang/String;

    return-object v0
.end method

.method public getPin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/Register;->pin:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/Register;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/Register;->email:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setGtype(I)V
    .locals 0
    .param p1, "gtype"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/Register;->gtype:I

    .line 51
    return-void
.end method

.method public setPasswd(Ljava/lang/String;)V
    .locals 0
    .param p1, "passwd"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/Register;->passwd:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setPin(Ljava/lang/String;)V
    .locals 0
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/Register;->pin:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/Register;->username:Ljava/lang/String;

    .line 19
    return-void
.end method
