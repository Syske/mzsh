.class public Lcom/meizu/smart/wristband/models/newwork/response/VersionData;
.super Ljava/lang/Object;
.source "VersionData.java"


# instance fields
.field private deviceVer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/DeviceVer;",
            ">;"
        }
    .end annotation
.end field

.field private goldVer:I

.field private noticeVer:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
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
            "Lcom/meizu/smart/wristband/models/newwork/response/DeviceVer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/VersionData;->deviceVer:Ljava/util/List;

    return-object v0
.end method

.method public getGoldVer()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/VersionData;->goldVer:I

    return v0
.end method

.method public getNoticeVer()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/VersionData;->noticeVer:I

    return v0
.end method

.method public setDeviceVer(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/DeviceVer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "deviceVer":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/newwork/response/DeviceVer;>;"
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/VersionData;->deviceVer:Ljava/util/List;

    .line 20
    return-void
.end method

.method public setGoldVer(I)V
    .locals 0
    .param p1, "goldVer"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/VersionData;->goldVer:I

    .line 36
    return-void
.end method

.method public setNoticeVer(I)V
    .locals 0
    .param p1, "noticeVer"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/VersionData;->noticeVer:I

    .line 28
    return-void
.end method
