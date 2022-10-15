.class public Lcom/meizu/smart/wristband/servers/DBDeviceApi;
.super Ljava/lang/Object;
.source "DBDeviceApi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDevice(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "productor"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 66
    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;-><init>()V

    .line 67
    .local v0, "btDev":Lcom/meizu/smart/wristband/models/database/entity/BtDev;
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getLoginUser(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 68
    invoke-virtual {v0, p1}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->setProductorname(Ljava/lang/String;)V

    .line 69
    invoke-static {p1}, Lcom/meizu/smart/wristband/constant/Producter;->deviceTypeToManufacturer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->setProductor(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0, p2}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->setMac(Ljava/lang/String;)V

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addDevice "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 74
    :try_start_0
    new-instance v2, Lcom/meizu/smart/wristband/models/database/servers/BtDevServer;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/models/database/servers/BtDevServer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/meizu/smart/wristband/models/database/servers/BtDevServer;->createOrUpdateDevice(Lcom/meizu/smart/wristband/models/database/entity/BtDev;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 75
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Ljava/sql/SQLException;
    invoke-virtual {v1}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0
.end method

.method public static checkUpdate(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dev"    # Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    .prologue
    const/4 v3, 0x0

    .line 90
    const/4 v1, 0x0

    .line 92
    .local v1, "latestVer":Lcom/meizu/smart/wristband/models/database/entity/GainEvent;
    :try_start_0
    new-instance v2, Lcom/meizu/smart/wristband/models/database/servers/VersionServer;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/models/database/servers/VersionServer;-><init>(Landroid/content/Context;)V

    .line 93
    .local v2, "server":Lcom/meizu/smart/wristband/models/database/servers/VersionServer;
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getProductor()Ljava/lang/String;

    move-result-object v4

    const-string v5, "02"

    invoke-virtual {v2, v4, v5}, Lcom/meizu/smart/wristband/models/database/servers/VersionServer;->getVersion(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/smart/wristband/models/database/entity/GainEvent;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 98
    .end local v2    # "server":Lcom/meizu/smart/wristband/models/database/servers/VersionServer;
    :goto_0
    if-eqz p1, :cond_0

    if-nez v1, :cond_1

    .line 106
    :cond_0
    :goto_1
    return v3

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0

    .line 101
    .end local v0    # "e":Ljava/sql/SQLException;
    :cond_1
    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/entity/GainEvent;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getCoreVersion()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 105
    const-string v3, "Yes , have a new version to be updated"

    invoke-static {v3}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 106
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public static getDeviceByType(Landroid/content/Context;Ljava/lang/String;)Lcom/meizu/smart/wristband/models/database/entity/BtDev;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 42
    const/4 v0, 0x0

    .line 44
    .local v0, "btDevServer":Lcom/meizu/smart/wristband/models/database/servers/BtDevServer;
    :try_start_0
    new-instance v1, Lcom/meizu/smart/wristband/models/database/servers/BtDevServer;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/models/database/servers/BtDevServer;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v0    # "btDevServer":Lcom/meizu/smart/wristband/models/database/servers/BtDevServer;
    .local v1, "btDevServer":Lcom/meizu/smart/wristband/models/database/servers/BtDevServer;
    :try_start_1
    new-instance v3, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;

    invoke-direct {v3, p0}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;-><init>(Landroid/content/Context;)V

    .line 46
    .local v3, "userInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->getLoginUser()Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v4

    invoke-virtual {v1, v4, p1}, Lcom/meizu/smart/wristband/models/database/servers/BtDevServer;->getBtDev(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/lang/String;)Lcom/meizu/smart/wristband/models/database/entity/BtDev;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    move-object v0, v1

    .line 51
    .end local v1    # "btDevServer":Lcom/meizu/smart/wristband/models/database/servers/BtDevServer;
    .end local v3    # "userInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    .restart local v0    # "btDevServer":Lcom/meizu/smart/wristband/models/database/servers/BtDevServer;
    :goto_0
    return-object v4

    .line 47
    :catch_0
    move-exception v2

    .line 48
    .local v2, "e":Ljava/sql/SQLException;
    :goto_1
    invoke-virtual {v2}, Ljava/sql/SQLException;->printStackTrace()V

    .line 51
    const/4 v4, 0x0

    goto :goto_0

    .line 47
    .end local v0    # "btDevServer":Lcom/meizu/smart/wristband/models/database/servers/BtDevServer;
    .end local v2    # "e":Ljava/sql/SQLException;
    .restart local v1    # "btDevServer":Lcom/meizu/smart/wristband/models/database/servers/BtDevServer;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "btDevServer":Lcom/meizu/smart/wristband/models/database/servers/BtDevServer;
    .restart local v0    # "btDevServer":Lcom/meizu/smart/wristband/models/database/servers/BtDevServer;
    goto :goto_1
.end method

.method public static getDeviceSn(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 117
    .local v0, "prefs":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_sn"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "sn":Ljava/lang/String;
    return-object v1
.end method

.method public static getMainDevice(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/BtDev;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 26
    const/4 v0, 0x0

    .line 28
    .local v0, "btDevServer":Lcom/meizu/smart/wristband/models/database/servers/BtDevServer;
    :try_start_0
    new-instance v1, Lcom/meizu/smart/wristband/models/database/servers/BtDevServer;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/models/database/servers/BtDevServer;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .end local v0    # "btDevServer":Lcom/meizu/smart/wristband/models/database/servers/BtDevServer;
    .local v1, "btDevServer":Lcom/meizu/smart/wristband/models/database/servers/BtDevServer;
    :try_start_1
    new-instance v4, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;

    invoke-direct {v4, p0}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;-><init>(Landroid/content/Context;)V

    .line 31
    .local v4, "userInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->getLoginUser()Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/meizu/smart/wristband/models/database/servers/BtDevServer;->getAllDevice(Lcom/meizu/smart/wristband/models/database/entity/User;)Ljava/util/List;

    move-result-object v2

    .line 32
    .local v2, "devices":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/BtDev;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/smart/wristband/models/database/entity/BtDev;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 38
    .end local v1    # "btDevServer":Lcom/meizu/smart/wristband/models/database/servers/BtDevServer;
    .end local v2    # "devices":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/BtDev;>;"
    .end local v4    # "userInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    .restart local v0    # "btDevServer":Lcom/meizu/smart/wristband/models/database/servers/BtDevServer;
    :goto_0
    return-object v5

    .end local v0    # "btDevServer":Lcom/meizu/smart/wristband/models/database/servers/BtDevServer;
    .restart local v1    # "btDevServer":Lcom/meizu/smart/wristband/models/database/servers/BtDevServer;
    .restart local v2    # "devices":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/BtDev;>;"
    .restart local v4    # "userInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    :cond_0
    move-object v0, v1

    .end local v1    # "btDevServer":Lcom/meizu/smart/wristband/models/database/servers/BtDevServer;
    .restart local v0    # "btDevServer":Lcom/meizu/smart/wristband/models/database/servers/BtDevServer;
    move-object v5, v6

    .line 33
    goto :goto_0

    .line 34
    .end local v2    # "devices":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/BtDev;>;"
    .end local v4    # "userInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    :catch_0
    move-exception v3

    .line 35
    .local v3, "e":Ljava/sql/SQLException;
    :goto_1
    invoke-virtual {v3}, Ljava/sql/SQLException;->printStackTrace()V

    move-object v5, v6

    .line 38
    goto :goto_0

    .line 34
    .end local v0    # "btDevServer":Lcom/meizu/smart/wristband/models/database/servers/BtDevServer;
    .end local v3    # "e":Ljava/sql/SQLException;
    .restart local v1    # "btDevServer":Lcom/meizu/smart/wristband/models/database/servers/BtDevServer;
    :catch_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "btDevServer":Lcom/meizu/smart/wristband/models/database/servers/BtDevServer;
    .restart local v0    # "btDevServer":Lcom/meizu/smart/wristband/models/database/servers/BtDevServer;
    goto :goto_1
.end method

.method public static saveDeviceSn(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sn"    # Ljava/lang/String;
    .param p2, "mac"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 112
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_sn"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 113
    return-void
.end method

.method public static unBindDevice(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dev"    # Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    .prologue
    .line 56
    :try_start_0
    new-instance v0, Lcom/meizu/smart/wristband/models/database/servers/BtDevServer;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/models/database/servers/BtDevServer;-><init>(Landroid/content/Context;)V

    .line 57
    .local v0, "btDevServer":Lcom/meizu/smart/wristband/models/database/servers/BtDevServer;
    invoke-virtual {v0, p1}, Lcom/meizu/smart/wristband/models/database/servers/BtDevServer;->removeDevice(Lcom/meizu/smart/wristband/models/database/entity/BtDev;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v0    # "btDevServer":Lcom/meizu/smart/wristband/models/database/servers/BtDevServer;
    :goto_0
    invoke-static {}, Lcom/meizu/smart/wristband/servers/BleServer;->releaseInstance()V

    .line 63
    return-void

    .line 58
    :catch_0
    move-exception v1

    .line 59
    .local v1, "e":Ljava/sql/SQLException;
    invoke-virtual {v1}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0
.end method

.method public static updateDevice(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dev"    # Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    .prologue
    .line 83
    :try_start_0
    new-instance v1, Lcom/meizu/smart/wristband/models/database/servers/BtDevServer;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/models/database/servers/BtDevServer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/meizu/smart/wristband/models/database/servers/BtDevServer;->createOrUpdateDevice(Lcom/meizu/smart/wristband/models/database/entity/BtDev;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0
.end method
