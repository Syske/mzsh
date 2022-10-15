.class public Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity$Sysdata;
.super Ljava/lang/Object;
.source "RequestEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sysdata"
.end annotation


# static fields
.field public static manufCode:Ljava/lang/String;


# instance fields
.field private appVer:Ljava/lang/String;

.field private blueVer:Ljava/lang/String;

.field private deviceId:Ljava/lang/String;

.field private deviceVer:Ljava/lang/String;

.field private mobileType:Ljava/lang/String;

.field private protocolType:Ljava/lang/String;

.field private sendDate:Ljava/lang/String;

.field private systemLang:Ljava/lang/String;

.field private systemVer:Ljava/lang/String;

.field private timeZone:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "001"

    sput-object v0, Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity$Sysdata;->manufCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppVer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity$Sysdata;->appVer:Ljava/lang/String;

    return-object v0
.end method

.method public getBlueVer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity$Sysdata;->blueVer:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity$Sysdata;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceVer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity$Sysdata;->deviceVer:Ljava/lang/String;

    return-object v0
.end method

.method public getManufCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity$Sysdata;->manufCode:Ljava/lang/String;

    return-object v0
.end method

.method public getMobileType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity$Sysdata;->mobileType:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity$Sysdata;->protocolType:Ljava/lang/String;

    return-object v0
.end method

.method public getSendDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity$Sysdata;->sendDate:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemLang()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity$Sysdata;->systemLang:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemVer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity$Sysdata;->systemVer:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity$Sysdata;->timeZone:Ljava/lang/String;

    return-object v0
.end method

.method public setAppVer(Ljava/lang/String;)V
    .locals 0
    .param p1, "appVer"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity$Sysdata;->appVer:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setBlueVer(Ljava/lang/String;)V
    .locals 0
    .param p1, "blueVer"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity$Sysdata;->blueVer:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity$Sysdata;->deviceId:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setDeviceVer(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceVer"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity$Sysdata;->deviceVer:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setManufCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "manufCode"    # Ljava/lang/String;

    .prologue
    .line 130
    sput-object p1, Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity$Sysdata;->manufCode:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setMobileType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mobileType"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity$Sysdata;->mobileType:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setProtocolType(Ljava/lang/String;)V
    .locals 0
    .param p1, "protocolType"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity$Sysdata;->protocolType:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setSendDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "sendDate"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity$Sysdata;->sendDate:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setSystemLang(Ljava/lang/String;)V
    .locals 0
    .param p1, "systemLang"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity$Sysdata;->systemLang:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setSystemVer(Ljava/lang/String;)V
    .locals 0
    .param p1, "systemVer"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity$Sysdata;->systemVer:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0
    .param p1, "timeZone"    # Ljava/lang/String;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity$Sysdata;->timeZone:Ljava/lang/String;

    .line 139
    return-void
.end method
