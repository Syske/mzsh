.class public Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;
.super Ljava/lang/Object;
.source "NetWorkApi1.java"


# static fields
.field private static final ADDRESS_1:Ljava/lang/String; = "http://inside.purifit.fitband.tech"

.field private static final ADDRESS_2:Ljava/lang/String; = "http://band.meiklife.cn"

.field private static final ADDRESS_MEIZU:Ljava/lang/String; = "http://112.74.201.130:5000/api/wxsports/watch"

.field public static RELEASE:Z = false

.field private static final SERVICE:Ljava/lang/String; = "/Service"

.field private static httpClient:Lcom/loopj/android/http/AsyncHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    sput-boolean v0, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->RELEASE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Lrx/Observable;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {p0}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->checkResponse(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static checkIdentifyCard(Landroid/content/Context;Lcom/meizu/smart/wristband/models/newwork/request/CheckIndentify;)Lrx/Observable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "param"    # Lcom/meizu/smart/wristband/models/newwork/request/CheckIndentify;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/meizu/smart/wristband/models/newwork/request/CheckIndentify;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->getServerChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/userinfoDatas/checkpin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->executeCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static checkResponse(Ljava/lang/String;)Lrx/Observable;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1$1;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static commitAim(Landroid/content/Context;Lcom/meizu/smart/wristband/models/newwork/request/CommitAim;)Lrx/Observable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "param"    # Lcom/meizu/smart/wristband/models/newwork/request/CommitAim;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/meizu/smart/wristband/models/newwork/request/CommitAim;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->getServerChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/setDatas/uploadAIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->executeCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static commitAutoSleepData(Landroid/content/Context;Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep;)Lrx/Observable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "param"    # Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->getServerChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/sleepDatas/uploadBaseSleep"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->executeCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static commitHeartRateData(Landroid/content/Context;Lcom/meizu/smart/wristband/models/newwork/request/CommitHeartRate;)Lrx/Observable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "param"    # Lcom/meizu/smart/wristband/models/newwork/request/CommitHeartRate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/meizu/smart/wristband/models/newwork/request/CommitHeartRate;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->getServerChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/othersDatas/uploadDayHeartrates"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->executeCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static commitMac(Landroid/content/Context;Lcom/meizu/smart/wristband/models/newwork/request/CommitMac;Ljava/lang/String;)Lrx/Observable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "param"    # Lcom/meizu/smart/wristband/models/newwork/request/CommitMac;
    .param p2, "manufCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/meizu/smart/wristband/models/newwork/request/CommitMac;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->getServerChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/setDatas/uploadMAC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->executeCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static commitRealSport(Landroid/content/Context;Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport;)Lrx/Observable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "param"    # Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->getServerChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/sportsDatas/uploadRTSport"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->executeCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static commitSetting(Landroid/content/Context;Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;)Lrx/Observable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "param"    # Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->getServerChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/setDatas/uploadSET"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->executeCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static commitSleepData(Landroid/content/Context;Lcom/meizu/smart/wristband/models/newwork/request/CommitSleep;)Lrx/Observable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "param"    # Lcom/meizu/smart/wristband/models/newwork/request/CommitSleep;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/meizu/smart/wristband/models/newwork/request/CommitSleep;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->getServerChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/sleepDatas/uploadBaseSleep"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->executeCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static commitSportData(Landroid/content/Context;Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData;)Lrx/Observable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "param"    # Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->getServerChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/sportsDatas/upload"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->executeCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static commitUserInfo(Landroid/content/Context;Lcom/meizu/smart/wristband/models/newwork/request/CommitUserInfo;)Lrx/Observable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "param"    # Lcom/meizu/smart/wristband/models/newwork/request/CommitUserInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/meizu/smart/wristband/models/newwork/request/CommitUserInfo;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->getServerChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/userinfoDatas/info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->executeCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static downloadMac(Landroid/content/Context;Lcom/meizu/smart/wristband/models/newwork/request/Common;)Lrx/Observable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "param"    # Lcom/meizu/smart/wristband/models/newwork/request/Common;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/meizu/smart/wristband/models/newwork/request/Common;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->getServerChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/setDatas/downloadMAC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->executeCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static downloadRealSport(Landroid/content/Context;Lcom/meizu/smart/wristband/models/newwork/request/LoadSportData;)Lrx/Observable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "param"    # Lcom/meizu/smart/wristband/models/newwork/request/LoadSportData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/meizu/smart/wristband/models/newwork/request/LoadSportData;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->getServerChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/sportsDatas/downloadRTSport"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->executeCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static downloadSetting(Landroid/content/Context;Lcom/meizu/smart/wristband/models/newwork/request/Common;)Lrx/Observable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "param"    # Lcom/meizu/smart/wristband/models/newwork/request/Common;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/meizu/smart/wristband/models/newwork/request/Common;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->getServerChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/setDatas/downloadSET"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->executeCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static executeCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Lrx/Observable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    const-string v0, "001"

    invoke-static {p0, p1, p2, v0}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->executeCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static executeCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lrx/Observable;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/Object;
    .param p3, "manufCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    invoke-static {p0}, Lcom/meizu/smart/wristband/utils/SystemUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 127
    new-instance v3, Ljava/lang/Throwable;

    const v4, 0x7f0801f8

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lrx/Observable;->error(Ljava/lang/Throwable;)Lrx/Observable;

    move-result-object v3

    .line 164
    :goto_0
    return-object v3

    .line 131
    :cond_0
    new-instance v1, Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity;-><init>()V

    .line 132
    .local v1, "requestEntity":Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity;
    invoke-static {p0}, Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity;->generateSysData(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity$Sysdata;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity;->setSysdata(Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity$Sysdata;)V

    .line 133
    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity;->getSysdata()Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity$Sysdata;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity$Sysdata;->setManufCode(Ljava/lang/String;)V

    .line 134
    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, "str":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u53d1\u9001\u6570\u636e1(http),url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 136
    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->i1(Ljava/lang/String;)V

    .line 137
    new-instance v3, Ljava/lang/String;

    .line 138
    invoke-static {v2}, Lorg/apache/commons/lang/StringEscapeUtils;->escapeJavaScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 137
    invoke-static {v4}, Ldolphin/tools/util/CompressUtil;->gZip([B)[B

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v3}, Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity;->setRqdata(Ljava/lang/Object;)V

    .line 140
    move-object v0, v1

    .line 141
    .local v0, "req":Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity;
    new-instance v3, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1$3;

    invoke-direct {v3, p0, p1, v0}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1$3;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity;)V

    invoke-static {v3}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v3

    new-instance v4, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1$2;

    invoke-direct {v4, p1}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1$2;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v3, v4}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v3

    .line 164
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v3

    goto :goto_0
.end method

.method public static executeCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/loopj/android/http/TextHttpResponseHandler;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "strParam"    # Ljava/lang/String;
    .param p3, "responseHandler"    # Lcom/loopj/android/http/TextHttpResponseHandler;

    .prologue
    .line 108
    move-object v8, p2

    .line 109
    .local v8, "str":Ljava/lang/String;
    const/4 v3, 0x0

    .line 111
    .local v3, "entity":Lcz/msebera/android/httpclient/entity/StringEntity;
    :try_start_0
    const-string/jumbo v0, "\u53d1\u9001\u6570\u636e2(http)"

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 112
    invoke-static {v8}, Ldolphin/tools/util/LogUtil;->i1(Ljava/lang/String;)V

    .line 113
    new-instance v7, Lcz/msebera/android/httpclient/entity/StringEntity;

    invoke-direct {v7, v8}, Lcz/msebera/android/httpclient/entity/StringEntity;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "entity":Lcz/msebera/android/httpclient/entity/StringEntity;
    .local v7, "entity":Lcz/msebera/android/httpclient/entity/StringEntity;
    move-object v3, v7

    .line 118
    .end local v7    # "entity":Lcz/msebera/android/httpclient/entity/StringEntity;
    .restart local v3    # "entity":Lcz/msebera/android/httpclient/entity/StringEntity;
    :goto_0
    invoke-static {}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->getHttpClient()Lcom/loopj/android/http/AsyncHttpClient;

    move-result-object v0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/loopj/android/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcz/msebera/android/httpclient/HttpEntity;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 119
    return-void

    .line 114
    :catch_0
    move-exception v6

    .line 115
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v6}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 116
    invoke-virtual {v6}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static declared-synchronized getHttpClient()Lcom/loopj/android/http/AsyncHttpClient;
    .locals 3

    .prologue
    .line 63
    const-class v1, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->httpClient:Lcom/loopj/android/http/AsyncHttpClient;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    sput-object v0, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->httpClient:Lcom/loopj/android/http/AsyncHttpClient;

    .line 65
    sget-object v0, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->httpClient:Lcom/loopj/android/http/AsyncHttpClient;

    const v2, 0x2bf20

    invoke-virtual {v0, v2}, Lcom/loopj/android/http/AsyncHttpClient;->setTimeout(I)V

    .line 67
    :cond_0
    sget-object v0, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->httpClient:Lcom/loopj/android/http/AsyncHttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getQrCode(Landroid/content/Context;Lcom/meizu/smart/wristband/models/newwork/request/CommitQrCode;)Lrx/Observable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "param"    # Lcom/meizu/smart/wristband/models/newwork/request/CommitQrCode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/meizu/smart/wristband/models/newwork/request/CommitQrCode;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    const-string v0, "http://112.74.201.130:5000/api/wxsports/watch"

    invoke-static {p0, v0, p1}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->executeCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static getServerChannel(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, "serverUrl":Ljava/lang/String;
    sget-boolean v1, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->RELEASE:Z

    if-eqz v1, :cond_0

    .line 73
    const-string v0, "http://band.meiklife.cn/Service"

    .line 77
    :goto_0
    return-object v0

    .line 75
    :cond_0
    const-string v0, "http://inside.purifit.fitband.tech/Service"

    goto :goto_0
.end method

.method public static loadBizData(Landroid/content/Context;Lcom/meizu/smart/wristband/models/newwork/request/LoadBizDataReq;)Lrx/Observable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "param"    # Lcom/meizu/smart/wristband/models/newwork/request/LoadBizDataReq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/meizu/smart/wristband/models/newwork/request/LoadBizDataReq;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->getServerChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/othersDatas/downloadAll"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->executeCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static loadSleepData(Landroid/content/Context;Lcom/meizu/smart/wristband/models/newwork/request/LoadSportData;)Lrx/Observable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "param"    # Lcom/meizu/smart/wristband/models/newwork/request/LoadSportData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/meizu/smart/wristband/models/newwork/request/LoadSportData;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->getServerChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/sleepDatas/downloadSleep"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->executeCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static loadSportData(Landroid/content/Context;Lcom/meizu/smart/wristband/models/newwork/request/LoadSportData;)Lrx/Observable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "param"    # Lcom/meizu/smart/wristband/models/newwork/request/LoadSportData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/meizu/smart/wristband/models/newwork/request/LoadSportData;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->getServerChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/sportsDatas/download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->executeCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static loadUsage(Landroid/content/Context;Lcom/meizu/smart/wristband/models/newwork/request/LoadUseage;)Lrx/Observable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "param"    # Lcom/meizu/smart/wristband/models/newwork/request/LoadUseage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/meizu/smart/wristband/models/newwork/request/LoadUseage;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->getServerChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/othersDatas/useStatus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->executeCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static loadVersion(Landroid/content/Context;Lcom/meizu/smart/wristband/models/newwork/request/LoadVersion;Ljava/lang/String;)Lrx/Observable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "param"    # Lcom/meizu/smart/wristband/models/newwork/request/LoadVersion;
    .param p2, "manufCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/meizu/smart/wristband/models/newwork/request/LoadVersion;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->getServerChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/othersDatas/version"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->executeCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static login(Landroid/content/Context;Lcom/meizu/smart/wristband/models/newwork/request/Login;)Lrx/Observable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "param"    # Lcom/meizu/smart/wristband/models/newwork/request/Login;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/meizu/smart/wristband/models/newwork/request/Login;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->getServerChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/userinfoDatas/login"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->executeCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static login1(Landroid/content/Context;Lcom/meizu/smart/wristband/models/newwork/request/Login;)Lrx/Observable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "param"    # Lcom/meizu/smart/wristband/models/newwork/request/Login;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/meizu/smart/wristband/models/newwork/request/Login;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->getServerChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/userinfoDatas/loginAll"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->executeCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static modifyPassword(Landroid/content/Context;Lcom/meizu/smart/wristband/models/newwork/request/Register;)Lrx/Observable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "param"    # Lcom/meizu/smart/wristband/models/newwork/request/Register;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/meizu/smart/wristband/models/newwork/request/Register;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->getServerChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/userinfoDatas/modifypasswd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->executeCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static register(Landroid/content/Context;Lcom/meizu/smart/wristband/models/newwork/request/Register;)Lrx/Observable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "param"    # Lcom/meizu/smart/wristband/models/newwork/request/Register;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/meizu/smart/wristband/models/newwork/request/Register;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->getServerChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/userinfoDatas/register"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->executeCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static requestIdentifyCard(Landroid/content/Context;Lcom/meizu/smart/wristband/models/newwork/request/RequestIndentify;)Lrx/Observable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "param"    # Lcom/meizu/smart/wristband/models/newwork/request/RequestIndentify;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/meizu/smart/wristband/models/newwork/request/RequestIndentify;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->getServerChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/userinfoDatas/getpin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->executeCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static retrivevePassword(Landroid/content/Context;Lcom/meizu/smart/wristband/models/newwork/request/RetrievePwd;)Lrx/Observable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "param"    # Lcom/meizu/smart/wristband/models/newwork/request/RetrievePwd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/meizu/smart/wristband/models/newwork/request/RetrievePwd;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->getServerChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/userinfoDatas/modifypasswd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->executeCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
