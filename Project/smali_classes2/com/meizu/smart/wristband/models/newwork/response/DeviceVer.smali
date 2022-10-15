.class public Lcom/meizu/smart/wristband/models/newwork/response/DeviceVer;
.super Ljava/lang/Object;
.source "DeviceVer.java"


# instance fields
.field private appname:Ljava/lang/String;

.field private appurl:Ljava/lang/String;

.field private explains:Ljava/lang/String;

.field private explainsEN:Ljava/lang/String;

.field private gtype:Ljava/lang/String;

.field private manufCode:I

.field private md5:Ljava/lang/String;

.field private ver:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/DeviceVer;->appname:Ljava/lang/String;

    return-object v0
.end method

.method public getAppurl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/DeviceVer;->appurl:Ljava/lang/String;

    return-object v0
.end method

.method public getExplains()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/DeviceVer;->explains:Ljava/lang/String;

    return-object v0
.end method

.method public getExplainsEN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/DeviceVer;->explainsEN:Ljava/lang/String;

    return-object v0
.end method

.method public getGtype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/DeviceVer;->gtype:Ljava/lang/String;

    return-object v0
.end method

.method public getManufCode()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/DeviceVer;->manufCode:I

    return v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/DeviceVer;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getVer()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/DeviceVer;->ver:I

    return v0
.end method

.method public setAppname(Ljava/lang/String;)V
    .locals 0
    .param p1, "appname"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/DeviceVer;->appname:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setAppurl(Ljava/lang/String;)V
    .locals 0
    .param p1, "appurl"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/DeviceVer;->appurl:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setExplains(Ljava/lang/String;)V
    .locals 0
    .param p1, "explains"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/DeviceVer;->explains:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setExplainsEN(Ljava/lang/String;)V
    .locals 0
    .param p1, "explainsEN"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/DeviceVer;->explainsEN:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setGtype(Ljava/lang/String;)V
    .locals 0
    .param p1, "gtype"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/DeviceVer;->gtype:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setManufCode(I)V
    .locals 0
    .param p1, "manufCode"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/DeviceVer;->manufCode:I

    .line 63
    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0
    .param p1, "md5"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/DeviceVer;->md5:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setVer(I)V
    .locals 0
    .param p1, "ver"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/DeviceVer;->ver:I

    .line 55
    return-void
.end method
