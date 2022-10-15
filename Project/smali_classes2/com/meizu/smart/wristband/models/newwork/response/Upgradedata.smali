.class public Lcom/meizu/smart/wristband/models/newwork/response/Upgradedata;
.super Ljava/lang/Object;
.source "Upgradedata.java"


# instance fields
.field private deviceVer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/Devicedata;",
            ">;"
        }
    .end annotation
.end field

.field private dfuTime:Ljava/lang/String;

.field private goldRule:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/GoldRuledata;",
            ">;"
        }
    .end annotation
.end field

.field private goldVer:I

.field private noticeMsg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/Message;",
            ">;"
        }
    .end annotation
.end field

.field private noticeVer:I

.field private protocolType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceVer()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/Devicedata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/Upgradedata;->deviceVer:Ljava/util/List;

    return-object v0
.end method

.method public getDfuTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/Upgradedata;->dfuTime:Ljava/lang/String;

    return-object v0
.end method

.method public getGoldRule()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/GoldRuledata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/Upgradedata;->goldRule:Ljava/util/List;

    return-object v0
.end method

.method public getGoldVer()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/Upgradedata;->goldVer:I

    return v0
.end method

.method public getNoticeMsg()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/Upgradedata;->noticeMsg:Ljava/util/List;

    return-object v0
.end method

.method public getNoticeVer()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/Upgradedata;->noticeVer:I

    return v0
.end method

.method public getProtocolType()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/Upgradedata;->protocolType:I

    return v0
.end method

.method public setDeviceVer(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/Devicedata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "deviceVer":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/newwork/response/Devicedata;>;"
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/Upgradedata;->deviceVer:Ljava/util/List;

    .line 27
    return-void
.end method

.method public setDfuTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "dfuTime"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/Upgradedata;->dfuTime:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setGoldRule(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/GoldRuledata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "goldRule":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/newwork/response/GoldRuledata;>;"
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/Upgradedata;->goldRule:Ljava/util/List;

    .line 51
    return-void
.end method

.method public setGoldVer(I)V
    .locals 0
    .param p1, "goldVer"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/Upgradedata;->goldVer:I

    .line 43
    return-void
.end method

.method public setNoticeMsg(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "noticeMsg":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/newwork/response/Message;>;"
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/Upgradedata;->noticeMsg:Ljava/util/List;

    .line 67
    return-void
.end method

.method public setNoticeVer(I)V
    .locals 0
    .param p1, "noticeVer"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/Upgradedata;->noticeVer:I

    .line 59
    return-void
.end method

.method public setProtocolType(I)V
    .locals 0
    .param p1, "protocolType"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/Upgradedata;->protocolType:I

    .line 35
    return-void
.end method
