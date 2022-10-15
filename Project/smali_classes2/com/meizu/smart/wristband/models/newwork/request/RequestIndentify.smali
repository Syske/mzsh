.class public Lcom/meizu/smart/wristband/models/newwork/request/RequestIndentify;
.super Ljava/lang/Object;
.source "RequestIndentify.java"


# instance fields
.field private gtype:I

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
.method public getGtype()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/RequestIndentify;->gtype:I

    return v0
.end method

.method public getPin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/RequestIndentify;->pin:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/RequestIndentify;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setGtype(I)V
    .locals 0
    .param p1, "gtype"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/RequestIndentify;->gtype:I

    .line 26
    return-void
.end method

.method public setPin(Ljava/lang/String;)V
    .locals 0
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/RequestIndentify;->pin:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/RequestIndentify;->username:Ljava/lang/String;

    .line 18
    return-void
.end method
