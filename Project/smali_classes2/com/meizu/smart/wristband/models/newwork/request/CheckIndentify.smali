.class public Lcom/meizu/smart/wristband/models/newwork/request/CheckIndentify;
.super Ljava/lang/Object;
.source "CheckIndentify.java"


# instance fields
.field gtype:I

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
.method public getGtype()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CheckIndentify;->gtype:I

    return v0
.end method

.method public getPin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CheckIndentify;->pin:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CheckIndentify;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setGtype(I)V
    .locals 0
    .param p1, "gtype"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CheckIndentify;->gtype:I

    .line 33
    return-void
.end method

.method public setPin(Ljava/lang/String;)V
    .locals 0
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CheckIndentify;->pin:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CheckIndentify;->username:Ljava/lang/String;

    .line 17
    return-void
.end method
