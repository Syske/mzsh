.class public Lcom/meizu/smart/wristband/models/newwork/request/LoadVersion;
.super Ljava/lang/Object;
.source "LoadVersion.java"


# instance fields
.field private goldVer:Ljava/lang/Integer;

.field private gtype:Ljava/lang/String;

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
.method public getGoldVer()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/LoadVersion;->goldVer:Ljava/lang/Integer;

    return-object v0
.end method

.method public getGtype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/LoadVersion;->gtype:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/LoadVersion;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setGoldVer(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "goldVer"    # Ljava/lang/Integer;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/LoadVersion;->goldVer:Ljava/lang/Integer;

    .line 33
    return-void
.end method

.method public setGtype(Ljava/lang/String;)V
    .locals 0
    .param p1, "gtype"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/LoadVersion;->gtype:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/LoadVersion;->username:Ljava/lang/String;

    .line 17
    return-void
.end method
