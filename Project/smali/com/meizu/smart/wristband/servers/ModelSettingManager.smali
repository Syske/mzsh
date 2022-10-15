.class public Lcom/meizu/smart/wristband/servers/ModelSettingManager;
.super Ljava/lang/Object;
.source "ModelSettingManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/ModelSettingManager;->fileIsExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$lambda$0(Ljava/util/List;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/ModelSettingManager;->lambda$fetchLatestVersion$507(Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static commitMac(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "product"    # Ljava/lang/String;
    .param p2, "newMac"    # Ljava/lang/String;
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
    .line 369
    const/4 v1, 0x0

    .line 370
    .local v1, "dev":Lcom/meizu/smart/wristband/models/database/entity/BtDev;
    if-nez p2, :cond_0

    .line 371
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBDeviceApi;->getMainDevice(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    move-result-object v1

    .line 372
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getSync()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 373
    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getProductor()Ljava/lang/String;

    move-result-object p1

    .line 374
    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getMac()Ljava/lang/String;

    move-result-object p2

    .line 378
    :cond_0
    if-nez p2, :cond_1

    .line 379
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v3

    .line 388
    :goto_0
    return-object v3

    .line 382
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "upload mac : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 384
    new-instance v0, Lcom/meizu/smart/wristband/models/newwork/request/CommitMac;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/models/newwork/request/CommitMac;-><init>()V

    .line 385
    .local v0, "commitMac":Lcom/meizu/smart/wristband/models/newwork/request/CommitMac;
    new-instance v3, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;

    invoke-direct {v3, p0}, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;->getLoginInfo()Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer$LoginInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer$LoginInfo;->getAccount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/meizu/smart/wristband/models/newwork/request/CommitMac;->setUsername(Ljava/lang/String;)V

    .line 386
    invoke-virtual {v0, p2}, Lcom/meizu/smart/wristband/models/newwork/request/CommitMac;->setMac(Ljava/lang/String;)V

    .line 387
    move-object v2, v1

    .line 388
    .local v2, "finalDev":Lcom/meizu/smart/wristband/models/database/entity/BtDev;
    invoke-static {p0, v0, p1}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->commitMac(Landroid/content/Context;Lcom/meizu/smart/wristband/models/newwork/request/CommitMac;Ljava/lang/String;)Lrx/Observable;

    move-result-object v3

    new-instance v4, Lcom/meizu/smart/wristband/servers/ModelSettingManager$7;

    invoke-direct {v4, v2, p0}, Lcom/meizu/smart/wristband/servers/ModelSettingManager$7;-><init>(Lcom/meizu/smart/wristband/models/database/entity/BtDev;Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v3

    goto :goto_0
.end method

.method public static downVersionFile(Lcom/meizu/smart/wristband/models/newwork/response/DeviceVer;)Lrx/Observable;
    .locals 7
    .param p0, "deviceVer"    # Lcom/meizu/smart/wristband/models/newwork/response/DeviceVer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/smart/wristband/models/newwork/response/DeviceVer;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/GainEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/meizu/smart/wristband/models/newwork/response/DeviceVer;->getAppurl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 41
    .local v3, "url":Ljava/net/URL;
    invoke-static {}, Lcom/meizu/smart/wristband/utils/loadfile/DownLoadUtil;->getDataPath()Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, "path":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 43
    .local v4, "urlpath":Ljava/lang/String;
    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "fileName":Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/meizu/smart/wristband/utils/loadfile/DownLoadUtil;->downloadFile(Ljava/net/URL;Ljava/lang/String;)Lrx/Observable;

    move-result-object v5

    new-instance v6, Lcom/meizu/smart/wristband/servers/ModelSettingManager$1;

    invoke-direct {v6, v4, p0, v2, v1}, Lcom/meizu/smart/wristband/servers/ModelSettingManager$1;-><init>(Ljava/lang/String;Lcom/meizu/smart/wristband/models/newwork/response/DeviceVer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 66
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "url":Ljava/net/URL;
    .end local v4    # "urlpath":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 66
    invoke-static {}, Lrx/Observable;->empty()Lrx/Observable;

    move-result-object v5

    goto :goto_0
.end method

.method public static fetchLatestVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "product"    # Ljava/lang/String;
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
    .line 72
    if-nez p2, :cond_0

    .line 73
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBDeviceApi;->getMainDevice(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    move-result-object v0

    .line 74
    .local v0, "dev":Lcom/meizu/smart/wristband/models/database/entity/BtDev;
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getProductor()Ljava/lang/String;

    move-result-object p2

    .line 78
    .end local v0    # "dev":Lcom/meizu/smart/wristband/models/database/entity/BtDev;
    :cond_0
    if-nez p2, :cond_1

    .line 79
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v2

    .line 136
    :goto_0
    return-object v2

    .line 81
    :cond_1
    new-instance v1, Lcom/meizu/smart/wristband/models/newwork/request/LoadVersion;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/newwork/request/LoadVersion;-><init>()V

    .line 82
    .local v1, "request":Lcom/meizu/smart/wristband/models/newwork/request/LoadVersion;
    invoke-virtual {v1, p1}, Lcom/meizu/smart/wristband/models/newwork/request/LoadVersion;->setUsername(Ljava/lang/String;)V

    .line 83
    const-string v2, "03"

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/models/newwork/request/LoadVersion;->setGtype(Ljava/lang/String;)V

    .line 84
    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/models/newwork/request/LoadVersion;->setGoldVer(Ljava/lang/Integer;)V

    .line 85
    invoke-static {p0, v1, p2}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->loadVersion(Landroid/content/Context;Lcom/meizu/smart/wristband/models/newwork/request/LoadVersion;Ljava/lang/String;)Lrx/Observable;

    move-result-object v2

    new-instance v3, Lcom/meizu/smart/wristband/servers/ModelSettingManager$5;

    invoke-direct {v3}, Lcom/meizu/smart/wristband/servers/ModelSettingManager$5;-><init>()V

    .line 86
    invoke-virtual {v2, v3}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    new-instance v3, Lcom/meizu/smart/wristband/servers/ModelSettingManager$4;

    invoke-direct {v3}, Lcom/meizu/smart/wristband/servers/ModelSettingManager$4;-><init>()V

    .line 92
    invoke-virtual {v2, v3}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    new-instance v3, Lcom/meizu/smart/wristband/servers/ModelSettingManager$3;

    invoke-direct {v3, p0}, Lcom/meizu/smart/wristband/servers/ModelSettingManager$3;-><init>(Landroid/content/Context;)V

    .line 98
    invoke-virtual {v2, v3}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    new-instance v3, Lcom/meizu/smart/wristband/servers/ModelSettingManager$2;

    invoke-direct {v3, p0}, Lcom/meizu/smart/wristband/servers/ModelSettingManager$2;-><init>(Landroid/content/Context;)V

    .line 124
    invoke-virtual {v2, v3}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v2

    .line 136
    invoke-virtual {v2}, Lrx/Observable;->toList()Lrx/Observable;

    move-result-object v2

    invoke-static {}, Lcom/meizu/smart/wristband/servers/ModelSettingManager$$Lambda$1;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    goto :goto_0
.end method

.method private static fileIsExists(Ljava/lang/String;)Z
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 410
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 411
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 419
    .end local v1    # "f":Ljava/io/File;
    :goto_0
    return v2

    .line 415
    :catch_0
    move-exception v0

    .line 417
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 419
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "f":Ljava/io/File;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static synthetic lambda$fetchLatestVersion$507(Ljava/util/List;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "a"    # Ljava/util/List;

    .prologue
    .line 136
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static uploadSettings(Landroid/content/Context;)Lrx/Observable;
    .locals 37
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    new-instance v19, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;-><init>(Landroid/content/Context;)V

    .line 141
    .local v19, "loginInfoServer":Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;
    invoke-virtual/range {v19 .. v19}, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;->getLoginInfo()Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer$LoginInfo;

    move-result-object v18

    .line 142
    .local v18, "loginInfo":Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer$LoginInfo;
    invoke-static/range {p0 .. p0}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getLoginUser(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v34

    .line 143
    .local v34, "user":Lcom/meizu/smart/wristband/models/database/entity/User;
    if-eqz v18, :cond_12

    .line 144
    new-instance v25, Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;

    invoke-direct/range {v25 .. v25}, Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;-><init>()V

    .line 145
    .local v25, "param":Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;
    invoke-virtual/range {v18 .. v18}, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer$LoginInfo;->getAccount()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;->setUsername(Ljava/lang/String;)V

    .line 147
    const/16 v17, 0x0

    .line 148
    .local v17, "isCommit":Z
    const/16 v21, 0x0

    .line 150
    .local v21, "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    :try_start_0
    new-instance v22, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v21    # "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    .local v22, "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    :try_start_1
    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->alarm:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    move-object/from16 v0, v22

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;->getOther(Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/database/entity/Other$Type;)Lcom/meizu/smart/wristband/models/database/entity/Other;

    move-result-object v3

    .line 153
    .local v3, "otherAlarm":Lcom/meizu/smart/wristband/models/database/entity/Other;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/database/entity/Other;->getSync()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    .line 154
    const/16 v17, 0x1

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setting otherAlarm = "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/database/entity/Other;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/database/entity/Other;->getValue()Ljava/lang/String;

    move-result-object v28

    .line 158
    .local v28, "strAlarm":Ljava/lang/String;
    if-eqz v28, :cond_1

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 159
    const-string v2, ";"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 161
    .local v14, "arrAlarm":[Ljava/lang/String;
    const-string v28, ""

    .line 162
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    array-length v2, v14

    move/from16 v0, v16

    if-ge v0, v2, :cond_2

    .line 164
    aget-object v33, v14, v16

    .line 165
    .local v33, "tmp":Ljava/lang/String;
    const-string v2, ","

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 166
    .local v12, "alarmStringItem":[Ljava/lang/String;
    const/4 v2, 0x4

    aget-object v13, v12, v2

    .line 170
    .local v13, "alarmTime":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x1

    aget-object v11, v12, v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, ","

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v11, 0x2

    aget-object v11, v12, v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, ","

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v11, 0x3

    aget-object v11, v12, v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, ","

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 171
    if-nez v16, :cond_0

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 162
    :goto_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 174
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, ";"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    goto :goto_1

    .line 179
    .end local v12    # "alarmStringItem":[Ljava/lang/String;
    .end local v13    # "alarmTime":Ljava/lang/String;
    .end local v14    # "arrAlarm":[Ljava/lang/String;
    .end local v16    # "i":I
    .end local v33    # "tmp":Ljava/lang/String;
    :cond_1
    const-string v28, "NULL"

    .line 182
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setting strAlarm = "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 185
    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;->setAlarm(Ljava/lang/String;)V

    .line 188
    .end local v28    # "strAlarm":Ljava/lang/String;
    :cond_3
    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->aimSwich:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    move-object/from16 v0, v22

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;->getOther(Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/database/entity/Other$Type;)Lcom/meizu/smart/wristband/models/database/entity/Other;

    move-result-object v4

    .line 189
    .local v4, "otherAim":Lcom/meizu/smart/wristband/models/database/entity/Other;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/database/entity/Other;->getSync()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5

    .line 190
    const/16 v17, 0x1

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setting otherAim = "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/database/entity/Other;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/database/entity/Other;->getValue()Ljava/lang/String;

    move-result-object v27

    .line 193
    .local v27, "strAim":Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v11, 0x2

    if-ne v2, v11, :cond_4

    .line 194
    const/4 v2, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    .line 196
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setting strCaller = "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/database/entity/Other;->getValue()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;->setAim(Ljava/lang/String;)V

    .line 202
    .end local v27    # "strAim":Ljava/lang/String;
    :cond_5
    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->caller:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    move-object/from16 v0, v22

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;->getOther(Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/database/entity/Other$Type;)Lcom/meizu/smart/wristband/models/database/entity/Other;

    move-result-object v20

    .line 203
    .local v20, "otherCaller":Lcom/meizu/smart/wristband/models/database/entity/Other;
    if-eqz v20, :cond_7

    invoke-virtual/range {v20 .. v20}, Lcom/meizu/smart/wristband/models/database/entity/Other;->getSync()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_7

    .line 204
    const/16 v17, 0x1

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setting otherCaller = "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v20 .. v20}, Lcom/meizu/smart/wristband/models/database/entity/Other;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 206
    invoke-virtual/range {v20 .. v20}, Lcom/meizu/smart/wristband/models/database/entity/Other;->getValue()Ljava/lang/String;

    move-result-object v29

    .line 207
    .local v29, "strCaller":Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v11, 0x2

    if-ne v2, v11, :cond_6

    .line 208
    const/4 v2, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v29

    .line 210
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setting strCaller = "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 211
    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;->setCaller(Ljava/lang/String;)V

    .line 216
    .end local v29    # "strCaller":Ljava/lang/String;
    :cond_7
    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->sms:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    move-object/from16 v0, v22

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;->getOther(Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/database/entity/Other$Type;)Lcom/meizu/smart/wristband/models/database/entity/Other;

    move-result-object v24

    .line 217
    .local v24, "otherSms":Lcom/meizu/smart/wristband/models/database/entity/Other;
    if-eqz v24, :cond_9

    invoke-virtual/range {v24 .. v24}, Lcom/meizu/smart/wristband/models/database/entity/Other;->getSync()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_9

    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setting otherSms = "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v24 .. v24}, Lcom/meizu/smart/wristband/models/database/entity/Other;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 219
    const/16 v17, 0x1

    .line 220
    invoke-virtual/range {v24 .. v24}, Lcom/meizu/smart/wristband/models/database/entity/Other;->getValue()Ljava/lang/String;

    move-result-object v32

    .line 221
    .local v32, "strSms":Ljava/lang/String;
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v11, 0x2

    if-ne v2, v11, :cond_8

    .line 222
    const/4 v2, 0x1

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v32

    .line 225
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setting strSms = "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 226
    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;->setSms(Ljava/lang/String;)V

    .line 230
    .end local v32    # "strSms":Ljava/lang/String;
    :cond_9
    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->handsUp:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    move-object/from16 v0, v22

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;->getOther(Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/database/entity/Other$Type;)Lcom/meizu/smart/wristband/models/database/entity/Other;

    move-result-object v7

    .line 231
    .local v7, "otherHandup":Lcom/meizu/smart/wristband/models/database/entity/Other;
    if-eqz v7, :cond_a

    invoke-virtual {v7}, Lcom/meizu/smart/wristband/models/database/entity/Other;->getSync()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_a

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setting otherHandup = "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Lcom/meizu/smart/wristband/models/database/entity/Other;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 233
    const/16 v17, 0x1

    .line 234
    invoke-virtual {v7}, Lcom/meizu/smart/wristband/models/database/entity/Other;->getValue()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;->setWearHabit(Ljava/lang/String;)V

    .line 239
    :cond_a
    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->smart:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    move-object/from16 v0, v22

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;->getOther(Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/database/entity/Other$Type;)Lcom/meizu/smart/wristband/models/database/entity/Other;

    move-result-object v23

    .line 240
    .local v23, "otherSmart":Lcom/meizu/smart/wristband/models/database/entity/Other;
    if-eqz v23, :cond_b

    invoke-virtual/range {v23 .. v23}, Lcom/meizu/smart/wristband/models/database/entity/Other;->getSync()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_b

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setting otherSmart = "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v23 .. v23}, Lcom/meizu/smart/wristband/models/database/entity/Other;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 242
    const/16 v17, 0x1

    .line 244
    invoke-virtual/range {v23 .. v23}, Lcom/meizu/smart/wristband/models/database/entity/Other;->getValue()Ljava/lang/String;

    move-result-object v31

    .line 259
    .local v31, "strSmart":Ljava/lang/String;
    const-string v2, "-"

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v26

    .line 261
    .local v26, "split":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    aget-object v11, v26, v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, ","

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 262
    .local v35, "writeSmart":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v11, 0x1

    aget-object v11, v26, v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setting writeSmart = "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 265
    move-object/from16 v0, v25

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;->setSmartReminder(Ljava/lang/String;)V

    .line 269
    .end local v26    # "split":[Ljava/lang/String;
    .end local v31    # "strSmart":Ljava/lang/String;
    .end local v35    # "writeSmart":Ljava/lang/String;
    :cond_b
    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->findphone:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    move-object/from16 v0, v22

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;->getOther(Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/database/entity/Other$Type;)Lcom/meizu/smart/wristband/models/database/entity/Other;

    move-result-object v5

    .line 270
    .local v5, "otherFindphone":Lcom/meizu/smart/wristband/models/database/entity/Other;
    if-eqz v5, :cond_d

    invoke-virtual {v5}, Lcom/meizu/smart/wristband/models/database/entity/Other;->getSync()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_d

    .line 271
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setting otherFindphone = "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Lcom/meizu/smart/wristband/models/database/entity/Other;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 272
    const/16 v17, 0x1

    .line 273
    invoke-virtual {v5}, Lcom/meizu/smart/wristband/models/database/entity/Other;->getValue()Ljava/lang/String;

    move-result-object v30

    .line 274
    .local v30, "strFind":Ljava/lang/String;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v11, 0x2

    if-ne v2, v11, :cond_c

    .line 275
    const/4 v2, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v30

    .line 277
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setting strFind = "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 278
    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;->setFindphone(Ljava/lang/String;)V

    .line 287
    .end local v30    # "strFind":Ljava/lang/String;
    :cond_d
    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->sedentary:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    move-object/from16 v0, v22

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;->getOther(Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/database/entity/Other$Type;)Lcom/meizu/smart/wristband/models/database/entity/Other;

    move-result-object v8

    .line 288
    .local v8, "otherSedentary":Lcom/meizu/smart/wristband/models/database/entity/Other;
    if-eqz v8, :cond_e

    invoke-virtual {v8}, Lcom/meizu/smart/wristband/models/database/entity/Other;->getSync()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_e

    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setting otherSedentary = "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lcom/meizu/smart/wristband/models/database/entity/Other;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 290
    const/16 v17, 0x1

    .line 291
    invoke-virtual {v8}, Lcom/meizu/smart/wristband/models/database/entity/Other;->getValue()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;->setSedentary(Ljava/lang/String;)V

    .line 311
    :cond_e
    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->heartrate:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    move-object/from16 v0, v22

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;->getOther(Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/database/entity/Other$Type;)Lcom/meizu/smart/wristband/models/database/entity/Other;

    move-result-object v6

    .line 312
    .local v6, "otherHeartrate":Lcom/meizu/smart/wristband/models/database/entity/Other;
    if-eqz v6, :cond_f

    invoke-virtual {v6}, Lcom/meizu/smart/wristband/models/database/entity/Other;->getSync()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_f

    .line 313
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setting otherHeartrate = "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Lcom/meizu/smart/wristband/models/database/entity/Other;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 314
    const/16 v17, 0x1

    .line 315
    invoke-virtual {v6}, Lcom/meizu/smart/wristband/models/database/entity/Other;->getValue()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;->setHeartRateMonitor(Ljava/lang/String;)V

    .line 318
    :cond_f
    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->vibirate:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    move-object/from16 v0, v22

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;->getOther(Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/database/entity/Other$Type;)Lcom/meizu/smart/wristband/models/database/entity/Other;

    move-result-object v9

    .line 319
    .local v9, "otherVibirate":Lcom/meizu/smart/wristband/models/database/entity/Other;
    if-eqz v9, :cond_10

    invoke-virtual {v9}, Lcom/meizu/smart/wristband/models/database/entity/Other;->getSync()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_10

    .line 320
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setting otherVibirate = "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Lcom/meizu/smart/wristband/models/database/entity/Other;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 321
    const/16 v17, 0x1

    .line 322
    invoke-virtual {v9}, Lcom/meizu/smart/wristband/models/database/entity/Other;->getValue()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;->setMotor(Ljava/lang/String;)V

    .line 325
    :cond_10
    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->dateDisplay:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    move-object/from16 v0, v22

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;->getOther(Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/database/entity/Other$Type;)Lcom/meizu/smart/wristband/models/database/entity/Other;

    move-result-object v10

    .line 326
    .local v10, "otherTimeDisplay":Lcom/meizu/smart/wristband/models/database/entity/Other;
    if-eqz v10, :cond_11

    invoke-virtual {v10}, Lcom/meizu/smart/wristband/models/database/entity/Other;->getSync()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_11

    .line 327
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setting otherdateisplay = "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Lcom/meizu/smart/wristband/models/database/entity/Other;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 328
    const/16 v17, 0x1

    .line 329
    invoke-virtual {v10}, Lcom/meizu/smart/wristband/models/database/entity/Other;->getValue()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;->setDateDisplay(Ljava/lang/String;)V

    .line 334
    :cond_11
    if-eqz v17, :cond_12

    .line 335
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->commitSetting(Landroid/content/Context;Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;)Lrx/Observable;

    move-result-object v36

    new-instance v2, Lcom/meizu/smart/wristband/servers/ModelSettingManager$6;

    move-object/from16 v11, p0

    invoke-direct/range {v2 .. v11}, Lcom/meizu/smart/wristband/servers/ModelSettingManager$6;-><init>(Lcom/meizu/smart/wristband/models/database/entity/Other;Lcom/meizu/smart/wristband/models/database/entity/Other;Lcom/meizu/smart/wristband/models/database/entity/Other;Lcom/meizu/smart/wristband/models/database/entity/Other;Lcom/meizu/smart/wristband/models/database/entity/Other;Lcom/meizu/smart/wristband/models/database/entity/Other;Lcom/meizu/smart/wristband/models/database/entity/Other;Lcom/meizu/smart/wristband/models/database/entity/Other;Landroid/content/Context;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 364
    .end local v3    # "otherAlarm":Lcom/meizu/smart/wristband/models/database/entity/Other;
    .end local v4    # "otherAim":Lcom/meizu/smart/wristband/models/database/entity/Other;
    .end local v5    # "otherFindphone":Lcom/meizu/smart/wristband/models/database/entity/Other;
    .end local v6    # "otherHeartrate":Lcom/meizu/smart/wristband/models/database/entity/Other;
    .end local v7    # "otherHandup":Lcom/meizu/smart/wristband/models/database/entity/Other;
    .end local v8    # "otherSedentary":Lcom/meizu/smart/wristband/models/database/entity/Other;
    .end local v9    # "otherVibirate":Lcom/meizu/smart/wristband/models/database/entity/Other;
    .end local v10    # "otherTimeDisplay":Lcom/meizu/smart/wristband/models/database/entity/Other;
    .end local v17    # "isCommit":Z
    .end local v20    # "otherCaller":Lcom/meizu/smart/wristband/models/database/entity/Other;
    .end local v22    # "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    .end local v23    # "otherSmart":Lcom/meizu/smart/wristband/models/database/entity/Other;
    .end local v24    # "otherSms":Lcom/meizu/smart/wristband/models/database/entity/Other;
    .end local v25    # "param":Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;
    :goto_2
    return-object v2

    .line 359
    .restart local v17    # "isCommit":Z
    .restart local v21    # "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    .restart local v25    # "param":Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;
    :catch_0
    move-exception v15

    .line 360
    .local v15, "e":Ljava/sql/SQLException;
    :goto_3
    invoke-virtual {v15}, Ljava/sql/SQLException;->printStackTrace()V

    .line 364
    .end local v15    # "e":Ljava/sql/SQLException;
    .end local v17    # "isCommit":Z
    .end local v21    # "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    .end local v25    # "param":Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;
    :cond_12
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v2

    goto :goto_2

    .line 359
    .restart local v17    # "isCommit":Z
    .restart local v22    # "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    .restart local v25    # "param":Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;
    :catch_1
    move-exception v15

    move-object/from16 v21, v22

    .end local v22    # "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    .restart local v21    # "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    goto :goto_3
.end method
