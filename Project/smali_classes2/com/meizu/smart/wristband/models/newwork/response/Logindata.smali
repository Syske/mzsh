.class public Lcom/meizu/smart/wristband/models/newwork/response/Logindata;
.super Ljava/lang/Object;
.source "Logindata.java"


# instance fields
.field private aim:Lcom/meizu/smart/wristband/models/newwork/response/AimSetdata;

.field private bind:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/request/ThirdBinddata;",
            ">;"
        }
    .end annotation
.end field

.field private info:Lcom/meizu/smart/wristband/models/newwork/response/UserInfodata;

.field private mac:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/MacInfo;",
            ">;"
        }
    .end annotation
.end field

.field private set:Lcom/meizu/smart/wristband/models/newwork/response/ParamSetdata;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAim()Lcom/meizu/smart/wristband/models/newwork/response/AimSetdata;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/Logindata;->aim:Lcom/meizu/smart/wristband/models/newwork/response/AimSetdata;

    return-object v0
.end method

.method public getBind()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/request/ThirdBinddata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/Logindata;->bind:Ljava/util/List;

    return-object v0
.end method

.method public getInfo()Lcom/meizu/smart/wristband/models/newwork/response/UserInfodata;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/Logindata;->info:Lcom/meizu/smart/wristband/models/newwork/response/UserInfodata;

    return-object v0
.end method

.method public getMac()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/MacInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/Logindata;->mac:Ljava/util/List;

    return-object v0
.end method

.method public getSet()Lcom/meizu/smart/wristband/models/newwork/response/ParamSetdata;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/Logindata;->set:Lcom/meizu/smart/wristband/models/newwork/response/ParamSetdata;

    return-object v0
.end method

.method public setAim(Lcom/meizu/smart/wristband/models/newwork/response/AimSetdata;)V
    .locals 0
    .param p1, "aim"    # Lcom/meizu/smart/wristband/models/newwork/response/AimSetdata;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/Logindata;->aim:Lcom/meizu/smart/wristband/models/newwork/response/AimSetdata;

    .line 43
    return-void
.end method

.method public setBind(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/request/ThirdBinddata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "bind":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/newwork/request/ThirdBinddata;>;"
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/Logindata;->bind:Ljava/util/List;

    .line 59
    return-void
.end method

.method public setInfo(Lcom/meizu/smart/wristband/models/newwork/response/UserInfodata;)V
    .locals 0
    .param p1, "info"    # Lcom/meizu/smart/wristband/models/newwork/response/UserInfodata;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/Logindata;->info:Lcom/meizu/smart/wristband/models/newwork/response/UserInfodata;

    .line 27
    return-void
.end method

.method public setMac(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/MacInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "mac":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/newwork/response/MacInfo;>;"
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/Logindata;->mac:Ljava/util/List;

    .line 51
    return-void
.end method

.method public setSet(Lcom/meizu/smart/wristband/models/newwork/response/ParamSetdata;)V
    .locals 0
    .param p1, "set"    # Lcom/meizu/smart/wristband/models/newwork/response/ParamSetdata;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/Logindata;->set:Lcom/meizu/smart/wristband/models/newwork/response/ParamSetdata;

    .line 35
    return-void
.end method
