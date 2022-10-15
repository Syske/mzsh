.class public Lcom/meizu/smart/wristband/models/newwork/response/Devicedata;
.super Ljava/lang/Object;
.source "Devicedata.java"


# instance fields
.field private Ver:I

.field private appname:Ljava/lang/String;

.field private appurl:Ljava/lang/String;

.field private explains:Ljava/lang/String;

.field private explainsEN:Ljava/lang/String;

.field private gtype:Ljava/lang/String;

.field private md5:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/Devicedata;->appname:Ljava/lang/String;

    return-object v0
.end method

.method public getAppurl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/Devicedata;->appurl:Ljava/lang/String;

    return-object v0
.end method

.method public getExplains()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/Devicedata;->explains:Ljava/lang/String;

    return-object v0
.end method

.method public getExplainsEN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/Devicedata;->explainsEN:Ljava/lang/String;

    return-object v0
.end method

.method public getGtype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/Devicedata;->gtype:Ljava/lang/String;

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/Devicedata;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getVer()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/Devicedata;->Ver:I

    return v0
.end method

.method public setAppname(Ljava/lang/String;)V
    .locals 0
    .param p1, "appname"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/Devicedata;->appname:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setAppurl(Ljava/lang/String;)V
    .locals 0
    .param p1, "appurl"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/Devicedata;->appurl:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setExplains(Ljava/lang/String;)V
    .locals 0
    .param p1, "explains"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/Devicedata;->explains:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setExplainsEN(Ljava/lang/String;)V
    .locals 0
    .param p1, "explainsEN"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/Devicedata;->explainsEN:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setGtype(Ljava/lang/String;)V
    .locals 0
    .param p1, "gtype"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/Devicedata;->gtype:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0
    .param p1, "md5"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/Devicedata;->md5:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setVer(I)V
    .locals 0
    .param p1, "ver"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/Devicedata;->Ver:I

    .line 56
    return-void
.end method
