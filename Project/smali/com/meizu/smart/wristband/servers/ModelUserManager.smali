.class public Lcom/meizu/smart/wristband/servers/ModelUserManager;
.super Ljava/lang/Object;
.source "ModelUserManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/ModelUserManager;->lambda$requestIdentifyCard$508(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$1(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/ModelUserManager;->lambda$checkIndentifyCard$509(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$10(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/ModelUserManager;->lambda$retrivevePassword$518(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$2(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/ModelUserManager;->lambda$modifyPassword$510(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$3(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/ModelUserManager;->lambda$register$511(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$4(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/ModelUserManager;->lambda$registerWithPin$512(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$5(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/meizu/smart/wristband/servers/ModelUserManager;->lambda$commitSportAim$513(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/meizu/smart/wristband/servers/ModelUserManager;->lambda$commitSleepAim$514(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$7(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/meizu/smart/wristband/servers/ModelUserManager;->lambda$commitSleepAim$515(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$8(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/meizu/smart/wristband/servers/ModelUserManager;->lambda$commitAim$516(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$9(Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/meizu/smart/wristband/servers/ModelUserManager;->lambda$commitUserInfo$517(Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static checkIndentifyCard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lrx/Observable;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "telphone"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    new-instance v0, Lcom/meizu/smart/wristband/models/newwork/request/CheckIndentify;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/models/newwork/request/CheckIndentify;-><init>()V

    .line 108
    .local v0, "req":Lcom/meizu/smart/wristband/models/newwork/request/CheckIndentify;
    invoke-virtual {v0, p1}, Lcom/meizu/smart/wristband/models/newwork/request/CheckIndentify;->setUsername(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0, p2}, Lcom/meizu/smart/wristband/models/newwork/request/CheckIndentify;->setPin(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0, p3}, Lcom/meizu/smart/wristband/models/newwork/request/CheckIndentify;->setGtype(I)V

    .line 111
    invoke-static {p0, v0}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->checkIdentifyCard(Landroid/content/Context;Lcom/meizu/smart/wristband/models/newwork/request/CheckIndentify;)Lrx/Observable;

    move-result-object v1

    invoke-static {}, Lcom/meizu/smart/wristband/servers/ModelUserManager$$Lambda$2;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    return-object v1
.end method

.method public static commitAim(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "sportAim"    # Ljava/lang/String;
    .param p3, "sleepAim"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    new-instance v0, Lcom/meizu/smart/wristband/models/newwork/request/CommitAim;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/models/newwork/request/CommitAim;-><init>()V

    .line 226
    .local v0, "req":Lcom/meizu/smart/wristband/models/newwork/request/CommitAim;
    invoke-virtual {v0, p2}, Lcom/meizu/smart/wristband/models/newwork/request/CommitAim;->setSportAim(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v0, p1}, Lcom/meizu/smart/wristband/models/newwork/request/CommitAim;->setUsername(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v0, p3}, Lcom/meizu/smart/wristband/models/newwork/request/CommitAim;->setSleepAim(Ljava/lang/String;)V

    .line 230
    invoke-static {p0, v0}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->commitAim(Landroid/content/Context;Lcom/meizu/smart/wristband/models/newwork/request/CommitAim;)Lrx/Observable;

    move-result-object v1

    invoke-static {p0, p2, p3}, Lcom/meizu/smart/wristband/servers/ModelUserManager$$Lambda$9;->lambdaFactory$(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lrx/functions/Func1;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lcom/meizu/smart/wristband/servers/ModelUserManager$7;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/servers/ModelUserManager$7;-><init>(Landroid/content/Context;)V

    .line 234
    invoke-virtual {v1, v2}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    return-object v1
.end method

.method public static commitSleepAim(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "sleepAim"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    new-instance v0, Lcom/meizu/smart/wristband/models/newwork/request/CommitAim;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/models/newwork/request/CommitAim;-><init>()V

    .line 187
    .local v0, "req":Lcom/meizu/smart/wristband/models/newwork/request/CommitAim;
    invoke-virtual {v0, p2}, Lcom/meizu/smart/wristband/models/newwork/request/CommitAim;->setSleepAim(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0, p1}, Lcom/meizu/smart/wristband/models/newwork/request/CommitAim;->setUsername(Ljava/lang/String;)V

    .line 190
    invoke-static {p0, v0}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->commitAim(Landroid/content/Context;Lcom/meizu/smart/wristband/models/newwork/request/CommitAim;)Lrx/Observable;

    move-result-object v1

    invoke-static {p0, p2}, Lcom/meizu/smart/wristband/servers/ModelUserManager$$Lambda$7;->lambdaFactory$(Landroid/content/Context;Ljava/lang/String;)Lrx/functions/Func1;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lcom/meizu/smart/wristband/servers/ModelUserManager$5;

    invoke-direct {v2}, Lcom/meizu/smart/wristband/servers/ModelUserManager$5;-><init>()V

    .line 193
    invoke-virtual {v1, v2}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    return-object v1
.end method

.method public static commitSleepAim(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "sportAim"    # Ljava/lang/String;
    .param p3, "sleepAim"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    new-instance v0, Lcom/meizu/smart/wristband/models/newwork/request/CommitAim;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/models/newwork/request/CommitAim;-><init>()V

    .line 203
    .local v0, "req":Lcom/meizu/smart/wristband/models/newwork/request/CommitAim;
    invoke-virtual {v0, p2}, Lcom/meizu/smart/wristband/models/newwork/request/CommitAim;->setSportAim(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v0, p1}, Lcom/meizu/smart/wristband/models/newwork/request/CommitAim;->setUsername(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v0, p3}, Lcom/meizu/smart/wristband/models/newwork/request/CommitAim;->setSleepAim(Ljava/lang/String;)V

    .line 207
    invoke-static {p0, v0}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->commitAim(Landroid/content/Context;Lcom/meizu/smart/wristband/models/newwork/request/CommitAim;)Lrx/Observable;

    move-result-object v1

    invoke-static {p0, p2, p3}, Lcom/meizu/smart/wristband/servers/ModelUserManager$$Lambda$8;->lambdaFactory$(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lrx/functions/Func1;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lcom/meizu/smart/wristband/servers/ModelUserManager$6;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/servers/ModelUserManager$6;-><init>(Landroid/content/Context;)V

    .line 211
    invoke-virtual {v1, v2}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    return-object v1
.end method

.method public static commitSportAim(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "sportAim"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    new-instance v0, Lcom/meizu/smart/wristband/models/newwork/request/CommitAim;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/models/newwork/request/CommitAim;-><init>()V

    .line 167
    .local v0, "req":Lcom/meizu/smart/wristband/models/newwork/request/CommitAim;
    invoke-virtual {v0, p2}, Lcom/meizu/smart/wristband/models/newwork/request/CommitAim;->setSportAim(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v0, p1}, Lcom/meizu/smart/wristband/models/newwork/request/CommitAim;->setUsername(Ljava/lang/String;)V

    .line 170
    invoke-static {p0, v0}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->commitAim(Landroid/content/Context;Lcom/meizu/smart/wristband/models/newwork/request/CommitAim;)Lrx/Observable;

    move-result-object v1

    invoke-static {p0, p2}, Lcom/meizu/smart/wristband/servers/ModelUserManager$$Lambda$6;->lambdaFactory$(Landroid/content/Context;Ljava/lang/String;)Lrx/functions/Func1;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lcom/meizu/smart/wristband/servers/ModelUserManager$4;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/servers/ModelUserManager$4;-><init>(Landroid/content/Context;)V

    .line 173
    invoke-virtual {v1, v2}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    return-object v1
.end method

.method public static commitUserInfo(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/User;)Lrx/Observable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Lcom/meizu/smart/wristband/models/database/entity/User;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/meizu/smart/wristband/models/database/entity/User;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 274
    invoke-static {p0, p1, v0, v0}, Lcom/meizu/smart/wristband/servers/ModelUserManager;->commitUserInfo(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/User;ZZ)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static commitUserInfo(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/User;ZZ)Lrx/Observable;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Lcom/meizu/smart/wristband/models/database/entity/User;
    .param p2, "bCommitHead"    # Z
    .param p3, "bCommitBasicInfo"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/meizu/smart/wristband/models/database/entity/User;",
            "ZZ)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 286
    new-instance v2, Lcom/meizu/smart/wristband/models/newwork/request/CommitUserInfo;

    invoke-direct {v2}, Lcom/meizu/smart/wristband/models/newwork/request/CommitUserInfo;-><init>()V

    .line 287
    .local v2, "req":Lcom/meizu/smart/wristband/models/newwork/request/CommitUserInfo;
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/User;->getSex()Lcom/meizu/smart/wristband/constant/Sex;

    move-result-object v5

    invoke-virtual {v5}, Lcom/meizu/smart/wristband/constant/Sex;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/meizu/smart/wristband/models/newwork/request/CommitUserInfo;->setSexCode(I)V

    .line 288
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/User;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/meizu/smart/wristband/models/newwork/request/CommitUserInfo;->setUsername(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/User;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/meizu/smart/wristband/models/newwork/request/CommitUserInfo;->setAddress(Ljava/lang/String;)V

    .line 291
    if-eqz p3, :cond_0

    .line 292
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/User;->getBirthday()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/meizu/smart/wristband/models/newwork/request/CommitUserInfo;->setBirthday(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/User;->getHeight()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/meizu/smart/wristband/models/newwork/request/CommitUserInfo;->setHeight(I)V

    .line 294
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/User;->getWeight()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/meizu/smart/wristband/models/newwork/request/CommitUserInfo;->setWeight(I)V

    .line 295
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/User;->getNickname()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/meizu/smart/wristband/models/newwork/request/CommitUserInfo;->setNickname(Ljava/lang/String;)V

    .line 298
    :cond_0
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/User;->getNickname()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/meizu/smart/wristband/models/newwork/request/CommitUserInfo;->setNickname(Ljava/lang/String;)V

    .line 300
    if-eqz p2, :cond_1

    .line 301
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/User;->getPortrait()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/meizu/smart/wristband/models/newwork/request/CommitUserInfo;->setPortraitUrl(Ljava/lang/String;)V

    .line 305
    :cond_1
    const/4 v3, 0x0

    .line 307
    .local v3, "userInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    :try_start_0
    new-instance v4, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;

    invoke-direct {v4, p0}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    .end local v3    # "userInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    .local v4, "userInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    :try_start_1
    invoke-virtual {v4, p1}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->storeInfo(Lcom/meizu/smart/wristband/models/database/entity/User;)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    .line 313
    .end local v4    # "userInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    .restart local v3    # "userInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    :goto_0
    move-object v1, v3

    .line 314
    .local v1, "finalUserInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    invoke-static {p0, v2}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->commitUserInfo(Landroid/content/Context;Lcom/meizu/smart/wristband/models/newwork/request/CommitUserInfo;)Lrx/Observable;

    move-result-object v5

    invoke-static {p1, v1}, Lcom/meizu/smart/wristband/servers/ModelUserManager$$Lambda$10;->lambdaFactory$(Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;)Lrx/functions/Func1;

    move-result-object v6

    invoke-virtual {v5, v6}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v5

    return-object v5

    .line 309
    .end local v1    # "finalUserInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Ljava/sql/SQLException;
    :goto_1
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0

    .line 309
    .end local v0    # "e":Ljava/sql/SQLException;
    .end local v3    # "userInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    .restart local v4    # "userInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    :catch_1
    move-exception v0

    move-object v3, v4

    .end local v4    # "userInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    .restart local v3    # "userInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    goto :goto_1
.end method

.method private static synthetic lambda$checkIndentifyCard$509(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "a"    # Ljava/lang/String;

    .prologue
    .line 112
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$commitAim$516(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p3, "a"    # Ljava/lang/String;

    .prologue
    .line 231
    sget-object v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->sportAim:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    invoke-static {p0, v0, p1}, Lcom/meizu/smart/wristband/servers/DBUserApi;->setOtherInfo(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/Other$Type;Ljava/lang/String;)V

    .line 232
    sget-object v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->sleepAim:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    invoke-static {p0, v0, p2}, Lcom/meizu/smart/wristband/servers/DBUserApi;->setOtherInfo(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/Other$Type;Ljava/lang/String;)V

    .line 233
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$commitSleepAim$514(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p2, "a"    # Ljava/lang/String;

    .prologue
    .line 191
    sget-object v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->sleepAim:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    invoke-static {p0, v0, p1}, Lcom/meizu/smart/wristband/servers/DBUserApi;->setOtherInfo(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/Other$Type;Ljava/lang/String;)V

    .line 192
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$commitSleepAim$515(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p3, "a"    # Ljava/lang/String;

    .prologue
    .line 208
    sget-object v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->sportAim:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    invoke-static {p0, v0, p1}, Lcom/meizu/smart/wristband/servers/DBUserApi;->setOtherInfo(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/Other$Type;Ljava/lang/String;)V

    .line 209
    sget-object v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->sleepAim:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    invoke-static {p0, v0, p2}, Lcom/meizu/smart/wristband/servers/DBUserApi;->setOtherInfo(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/Other$Type;Ljava/lang/String;)V

    .line 210
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$commitSportAim$513(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p2, "a"    # Ljava/lang/String;

    .prologue
    .line 171
    sget-object v0, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->sportAim:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    invoke-static {p0, v0, p1}, Lcom/meizu/smart/wristband/servers/DBUserApi;->setOtherInfo(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/Other$Type;Ljava/lang/String;)V

    .line 172
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$commitUserInfo$517(Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p2, "a"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 315
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/models/database/entity/User;->setIsEmpty(Ljava/lang/Boolean;)V

    .line 316
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/models/database/entity/User;->setSync(Ljava/lang/Boolean;)V

    .line 317
    invoke-virtual {p1, p0}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->storeInfo(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 318
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$modifyPassword$510(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "a"    # Ljava/lang/String;

    .prologue
    .line 128
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$register$511(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "a"    # Ljava/lang/String;

    .prologue
    .line 144
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$registerWithPin$512(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "a"    # Ljava/lang/String;

    .prologue
    .line 161
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$requestIdentifyCard$508(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "a"    # Ljava/lang/String;

    .prologue
    .line 102
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$retrivevePassword$518(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "a"    # Ljava/lang/String;

    .prologue
    .line 329
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static loginForData(Landroid/content/Context;Lcom/meizu/smart/wristband/models/newwork/request/Login;)Lrx/Observable;
    .locals 3
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
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    :try_start_0
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/newwork/request/Login;->getPasswd()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/smart/wristband/utils/PwdCrypto;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/meizu/smart/wristband/models/newwork/request/Login;->setPasswd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    invoke-static {p0, p1}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->login1(Landroid/content/Context;Lcom/meizu/smart/wristband/models/newwork/request/Login;)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lcom/meizu/smart/wristband/servers/ModelUserManager$3;

    invoke-direct {v2}, Lcom/meizu/smart/wristband/servers/ModelUserManager$3;-><init>()V

    invoke-virtual {v1, v2}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lcom/meizu/smart/wristband/servers/ModelUserManager$2;

    invoke-direct {v2, p0, p1}, Lcom/meizu/smart/wristband/servers/ModelUserManager$2;-><init>(Landroid/content/Context;Lcom/meizu/smart/wristband/models/newwork/request/Login;)V

    .line 52
    invoke-virtual {v1, v2}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lcom/meizu/smart/wristband/servers/ModelUserManager$1;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/servers/ModelUserManager$1;-><init>(Landroid/content/Context;)V

    .line 70
    invoke-virtual {v1, v2}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    :goto_0
    return-object v1

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 43
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v1

    goto :goto_0
.end method

.method public static modifyPassword(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "telphone"    # Ljava/lang/String;
    .param p2, "passwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    new-instance v1, Lcom/meizu/smart/wristband/models/newwork/request/Register;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/newwork/request/Register;-><init>()V

    .line 118
    .local v1, "req":Lcom/meizu/smart/wristband/models/newwork/request/Register;
    invoke-virtual {v1, p1}, Lcom/meizu/smart/wristband/models/newwork/request/Register;->setUsername(Ljava/lang/String;)V

    .line 120
    :try_start_0
    invoke-static {p2}, Lcom/meizu/smart/wristband/utils/PwdCrypto;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/models/newwork/request/Register;->setPasswd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/models/newwork/request/Register;->setEmail(Ljava/lang/String;)V

    .line 125
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/models/newwork/request/Register;->setGtype(I)V

    .line 127
    invoke-static {p0, v1}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->modifyPassword(Landroid/content/Context;Lcom/meizu/smart/wristband/models/newwork/request/Register;)Lrx/Observable;

    move-result-object v2

    invoke-static {}, Lcom/meizu/smart/wristband/servers/ModelUserManager$$Lambda$3;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    return-object v2

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "telphone"    # Ljava/lang/String;
    .param p2, "passwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    new-instance v1, Lcom/meizu/smart/wristband/models/newwork/request/Register;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/newwork/request/Register;-><init>()V

    .line 135
    .local v1, "req":Lcom/meizu/smart/wristband/models/newwork/request/Register;
    invoke-virtual {v1, p1}, Lcom/meizu/smart/wristband/models/newwork/request/Register;->setUsername(Ljava/lang/String;)V

    .line 137
    :try_start_0
    invoke-static {p2}, Lcom/meizu/smart/wristband/utils/PwdCrypto;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/models/newwork/request/Register;->setPasswd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/models/newwork/request/Register;->setEmail(Ljava/lang/String;)V

    .line 143
    invoke-static {p0, v1}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->register(Landroid/content/Context;Lcom/meizu/smart/wristband/models/newwork/request/Register;)Lrx/Observable;

    move-result-object v2

    invoke-static {}, Lcom/meizu/smart/wristband/servers/ModelUserManager$$Lambda$4;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    return-object v2

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static registerWithPin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "telphone"    # Ljava/lang/String;
    .param p2, "passwd"    # Ljava/lang/String;
    .param p3, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    new-instance v1, Lcom/meizu/smart/wristband/models/newwork/request/Register;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/newwork/request/Register;-><init>()V

    .line 150
    .local v1, "req":Lcom/meizu/smart/wristband/models/newwork/request/Register;
    invoke-virtual {v1, p1}, Lcom/meizu/smart/wristband/models/newwork/request/Register;->setUsername(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v1, p3}, Lcom/meizu/smart/wristband/models/newwork/request/Register;->setPin(Ljava/lang/String;)V

    .line 152
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/models/newwork/request/Register;->setGtype(I)V

    .line 154
    :try_start_0
    invoke-static {p2}, Lcom/meizu/smart/wristband/utils/PwdCrypto;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/models/newwork/request/Register;->setPasswd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/models/newwork/request/Register;->setEmail(Ljava/lang/String;)V

    .line 160
    invoke-static {p0, v1}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->register(Landroid/content/Context;Lcom/meizu/smart/wristband/models/newwork/request/Register;)Lrx/Observable;

    move-result-object v2

    invoke-static {}, Lcom/meizu/smart/wristband/servers/ModelUserManager$$Lambda$5;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    return-object v2

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static requestIdentifyCard(Landroid/content/Context;Ljava/lang/String;I)Lrx/Observable;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "telphone"    # Ljava/lang/String;
    .param p2, "gtype"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Lcom/meizu/smart/wristband/models/newwork/request/RequestIndentify;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/models/newwork/request/RequestIndentify;-><init>()V

    .line 98
    .local v0, "req":Lcom/meizu/smart/wristband/models/newwork/request/RequestIndentify;
    invoke-virtual {v0, p1}, Lcom/meizu/smart/wristband/models/newwork/request/RequestIndentify;->setUsername(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0, p2}, Lcom/meizu/smart/wristband/models/newwork/request/RequestIndentify;->setGtype(I)V

    .line 100
    const-string v1, "e#y$7%"

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/newwork/request/RequestIndentify;->setPin(Ljava/lang/String;)V

    .line 101
    invoke-static {p0, v0}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->requestIdentifyCard(Landroid/content/Context;Lcom/meizu/smart/wristband/models/newwork/request/RequestIndentify;)Lrx/Observable;

    move-result-object v1

    invoke-static {}, Lcom/meizu/smart/wristband/servers/ModelUserManager$$Lambda$1;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    return-object v1
.end method

.method public static retrivevePassword(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userid"    # Ljava/lang/String;
    .param p2, "newPwd"    # Ljava/lang/String;
    .param p3, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 323
    new-instance v0, Lcom/meizu/smart/wristband/models/newwork/request/RetrievePwd;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/models/newwork/request/RetrievePwd;-><init>()V

    .line 324
    .local v0, "req":Lcom/meizu/smart/wristband/models/newwork/request/RetrievePwd;
    invoke-virtual {v0, p1}, Lcom/meizu/smart/wristband/models/newwork/request/RetrievePwd;->setUsername(Ljava/lang/String;)V

    .line 325
    invoke-virtual {v0, p2}, Lcom/meizu/smart/wristband/models/newwork/request/RetrievePwd;->setNewPasswrod(Ljava/lang/String;)V

    .line 326
    invoke-virtual {v0, p3}, Lcom/meizu/smart/wristband/models/newwork/request/RetrievePwd;->setPin(Ljava/lang/String;)V

    .line 328
    invoke-static {p0, v0}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->retrivevePassword(Landroid/content/Context;Lcom/meizu/smart/wristband/models/newwork/request/RetrievePwd;)Lrx/Observable;

    move-result-object v1

    invoke-static {}, Lcom/meizu/smart/wristband/servers/ModelUserManager$$Lambda$11;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    return-object v1
.end method
