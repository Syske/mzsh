.class public Lcom/meizu/smart/wristband/servers/DBUserApi;
.super Ljava/lang/Object;
.source "DBUserApi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAlarmString(Landroid/content/Context;)[Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 225
    :try_start_0
    new-instance v3, Lcom/meizu/smart/wristband/models/database/servers/SetServer;

    invoke-direct {v3, p0}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;-><init>(Landroid/content/Context;)V

    .line 226
    .local v3, "server":Lcom/meizu/smart/wristband/models/database/servers/SetServer;
    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->getAlarmSet()Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, "alarm":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAlarmString = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 230
    if-eqz v1, :cond_0

    .line 231
    const-string v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "_alarm":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v0, v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_0

    .line 233
    const/4 v1, 0x0

    .line 238
    .end local v0    # "_alarm":[Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    const-string v1, ""

    .line 239
    :cond_1
    const-string v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 243
    .end local v1    # "alarm":Ljava/lang/String;
    .end local v3    # "server":Lcom/meizu/smart/wristband/models/database/servers/SetServer;
    :goto_0
    return-object v4

    .line 240
    :catch_0
    move-exception v2

    .line 241
    .local v2, "e":Ljava/sql/SQLException;
    invoke-virtual {v2}, Ljava/sql/SQLException;->printStackTrace()V

    .line 243
    new-array v4, v6, [Ljava/lang/String;

    goto :goto_0
.end method

.method public static getAlertCallString(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    :try_start_0
    new-instance v2, Lcom/meizu/smart/wristband/models/database/servers/SetServer;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;-><init>(Landroid/content/Context;)V

    .line 132
    .local v2, "server":Lcom/meizu/smart/wristband/models/database/servers/SetServer;
    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->getCallerSet()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "alertCallString":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 134
    const-string v0, "00"

    .line 135
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->storeCaller(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v0    # "alertCallString":Ljava/lang/String;
    .end local v2    # "server":Lcom/meizu/smart/wristband/models/database/servers/SetServer;
    :cond_0
    :goto_0
    return-object v0

    .line 138
    :catch_0
    move-exception v1

    .line 139
    .local v1, "e":Ljava/sql/SQLException;
    invoke-virtual {v1}, Ljava/sql/SQLException;->printStackTrace()V

    .line 142
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAlertSmsString(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 147
    :try_start_0
    new-instance v2, Lcom/meizu/smart/wristband/models/database/servers/SetServer;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;-><init>(Landroid/content/Context;)V

    .line 148
    .local v2, "server":Lcom/meizu/smart/wristband/models/database/servers/SetServer;
    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->getSmsSet()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "alertSmsString":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 150
    const-string v0, "00"

    .line 151
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->storeSms(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .end local v0    # "alertSmsString":Ljava/lang/String;
    .end local v2    # "server":Lcom/meizu/smart/wristband/models/database/servers/SetServer;
    :cond_0
    :goto_0
    return-object v0

    .line 154
    :catch_0
    move-exception v1

    .line 155
    .local v1, "e":Ljava/sql/SQLException;
    invoke-virtual {v1}, Ljava/sql/SQLException;->printStackTrace()V

    .line 158
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAntLostString(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 462
    :try_start_0
    new-instance v2, Lcom/meizu/smart/wristband/models/database/servers/SetServer;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;-><init>(Landroid/content/Context;)V

    .line 463
    .local v2, "server":Lcom/meizu/smart/wristband/models/database/servers/SetServer;
    const-string/jumbo v3, "wxf_sql"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAntLostString server = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->getAntLostSet()Ljava/lang/String;

    move-result-object v0

    .line 465
    .local v0, "alertString":Ljava/lang/String;
    const-string/jumbo v3, "wxf_sql"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAntLostString alertString = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    if-nez v0, :cond_0

    .line 467
    const-string v0, "00"

    .line 468
    sget-object v3, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->antlost:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    const-string v4, "00"

    invoke-static {p0, v3, v4}, Lcom/meizu/smart/wristband/servers/DBUserApi;->setOtherInfo(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/Other$Type;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    .end local v0    # "alertString":Ljava/lang/String;
    .end local v2    # "server":Lcom/meizu/smart/wristband/models/database/servers/SetServer;
    :cond_0
    :goto_0
    return-object v0

    .line 471
    :catch_0
    move-exception v1

    .line 472
    .local v1, "e":Ljava/sql/SQLException;
    invoke-virtual {v1}, Ljava/sql/SQLException;->printStackTrace()V

    .line 475
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDateDisplayString(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    :try_start_0
    new-instance v1, Lcom/meizu/smart/wristband/models/database/servers/SetServer;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;-><init>(Landroid/content/Context;)V

    .line 97
    .local v1, "server":Lcom/meizu/smart/wristband/models/database/servers/SetServer;
    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->getTimeSet()Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "timeSet":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 99
    const-string v2, "0"

    .line 100
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->storeTimeDispay(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v1    # "server":Lcom/meizu/smart/wristband/models/database/servers/SetServer;
    .end local v2    # "timeSet":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 108
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getFindPhoneString(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 446
    :try_start_0
    new-instance v2, Lcom/meizu/smart/wristband/models/database/servers/SetServer;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;-><init>(Landroid/content/Context;)V

    .line 447
    .local v2, "server":Lcom/meizu/smart/wristband/models/database/servers/SetServer;
    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->getFindPhoneSet()Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, "alertString":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 449
    const-string v0, "00"

    .line 450
    sget-object v3, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->findphone:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    const-string v4, "00"

    invoke-static {p0, v3, v4}, Lcom/meizu/smart/wristband/servers/DBUserApi;->setOtherInfo(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/Other$Type;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    .end local v0    # "alertString":Ljava/lang/String;
    .end local v2    # "server":Lcom/meizu/smart/wristband/models/database/servers/SetServer;
    :cond_0
    :goto_0
    return-object v0

    .line 453
    :catch_0
    move-exception v1

    .line 454
    .local v1, "e":Ljava/sql/SQLException;
    invoke-virtual {v1}, Ljava/sql/SQLException;->printStackTrace()V

    .line 457
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getGoalRemindString(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 163
    :try_start_0
    new-instance v2, Lcom/meizu/smart/wristband/models/database/servers/SetServer;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;-><init>(Landroid/content/Context;)V

    .line 164
    .local v2, "server":Lcom/meizu/smart/wristband/models/database/servers/SetServer;
    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->getGoalRemind()Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "goalRemind":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 166
    const-string v1, "01"

    .line 167
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->storeAimSwich(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .end local v1    # "goalRemind":Ljava/lang/String;
    .end local v2    # "server":Lcom/meizu/smart/wristband/models/database/servers/SetServer;
    :cond_0
    :goto_0
    return-object v1

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 174
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHandupString(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    :try_start_0
    new-instance v2, Lcom/meizu/smart/wristband/models/database/servers/SetServer;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;-><init>(Landroid/content/Context;)V

    .line 63
    .local v2, "server":Lcom/meizu/smart/wristband/models/database/servers/SetServer;
    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->getHandupSet()Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "handsUp":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xb

    if-ge v3, v4, :cond_1

    .line 65
    :cond_0
    const-string v1, "4,0800,2200"

    .line 66
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->storeHandup(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v1    # "handsUp":Ljava/lang/String;
    .end local v2    # "server":Lcom/meizu/smart/wristband/models/database/servers/SetServer;
    :cond_1
    :goto_0
    return-object v1

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 74
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHeartRateMonitingString(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    :try_start_0
    new-instance v2, Lcom/meizu/smart/wristband/models/database/servers/SetServer;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;-><init>(Landroid/content/Context;)V

    .line 80
    .local v2, "server":Lcom/meizu/smart/wristband/models/database/servers/SetServer;
    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->getHeartrateMonitorSet()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "heartrate":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 82
    const-string v1, "1"

    .line 83
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->storeHeartateMonitor(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v1    # "heartrate":Ljava/lang/String;
    .end local v2    # "server":Lcom/meizu/smart/wristband/models/database/servers/SetServer;
    :cond_0
    :goto_0
    return-object v1

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 91
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getLengthUnit(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 311
    const/4 v2, 0x0

    .line 313
    .local v2, "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    :try_start_0
    new-instance v3, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;

    invoke-direct {v3, p0}, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    .end local v2    # "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    .local v3, "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    :try_start_1
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getLoginUser(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v5

    sget-object v6, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->unit_length:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    invoke-virtual {v3, v5, v6}, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;->getOther(Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/database/entity/Other$Type;)Lcom/meizu/smart/wristband/models/database/entity/Other;

    move-result-object v1

    .line 315
    .local v1, "other":Lcom/meizu/smart/wristband/models/database/entity/Other;
    if-nez v1, :cond_0

    .line 316
    sget-object v5, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->unit_length:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    const-string v6, "0"

    invoke-static {p0, v5, v6}, Lcom/meizu/smart/wristband/servers/DBUserApi;->setOtherInfo(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/Other$Type;Ljava/lang/String;)V

    .line 317
    const-string v4, "0"

    move-object v2, v3

    .line 330
    .end local v1    # "other":Lcom/meizu/smart/wristband/models/database/entity/Other;
    .end local v3    # "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    .restart local v2    # "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    :goto_0
    return-object v4

    .line 319
    .end local v2    # "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    .restart local v1    # "other":Lcom/meizu/smart/wristband/models/database/entity/Other;
    .restart local v3    # "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    :cond_0
    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/entity/Other;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 320
    .local v4, "value":Ljava/lang/String;
    invoke-static {v4}, Ldolphin/tools/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 321
    const-string v4, "0"
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    move-object v2, v3

    .line 324
    .end local v3    # "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    .restart local v2    # "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    goto :goto_0

    .line 326
    .end local v1    # "other":Lcom/meizu/smart/wristband/models/database/entity/Other;
    .end local v4    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Ljava/sql/SQLException;
    :goto_1
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 330
    const/4 v4, 0x0

    goto :goto_0

    .line 326
    .end local v0    # "e":Ljava/sql/SQLException;
    .end local v2    # "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    .restart local v3    # "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    .restart local v2    # "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    goto :goto_1
.end method

.method public static getLoginUser(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/User;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const/4 v1, 0x0

    .line 32
    .local v1, "userInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    :try_start_0
    new-instance v2, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .end local v1    # "userInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    .local v2, "userInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    :try_start_1
    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->getLoginUser()Lcom/meizu/smart/wristband/models/database/entity/User;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    move-object v1, v2

    .line 38
    .end local v2    # "userInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    .restart local v1    # "userInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    :goto_0
    return-object v3

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/sql/SQLException;
    :goto_1
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 38
    const/4 v3, 0x0

    goto :goto_0

    .line 34
    .end local v0    # "e":Ljava/sql/SQLException;
    .end local v1    # "userInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    .restart local v2    # "userInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "userInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    .restart local v1    # "userInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    goto :goto_1
.end method

.method public static getLongSitString(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    :try_start_0
    new-instance v2, Lcom/meizu/smart/wristband/models/database/servers/SetServer;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;-><init>(Landroid/content/Context;)V

    .line 45
    .local v2, "server":Lcom/meizu/smart/wristband/models/database/servers/SetServer;
    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->getSedentarySet()Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "longsitStr":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 47
    const-string v1, "060,0900,1800,0"

    .line 48
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->storeSedentary(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v1    # "longsitStr":Ljava/lang/String;
    .end local v2    # "server":Lcom/meizu/smart/wristband/models/database/servers/SetServer;
    :cond_0
    :goto_0
    return-object v1

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 57
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getMusicString(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 430
    :try_start_0
    new-instance v2, Lcom/meizu/smart/wristband/models/database/servers/SetServer;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;-><init>(Landroid/content/Context;)V

    .line 431
    .local v2, "server":Lcom/meizu/smart/wristband/models/database/servers/SetServer;
    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->getMusicSet()Ljava/lang/String;

    move-result-object v0

    .line 432
    .local v0, "alertString":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 433
    const-string v0, "01"

    .line 434
    sget-object v3, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->music:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    const-string v4, "01"

    invoke-static {p0, v3, v4}, Lcom/meizu/smart/wristband/servers/DBUserApi;->setOtherInfo(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/Other$Type;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    .end local v0    # "alertString":Ljava/lang/String;
    .end local v2    # "server":Lcom/meizu/smart/wristband/models/database/servers/SetServer;
    :cond_0
    :goto_0
    return-object v0

    .line 437
    :catch_0
    move-exception v1

    .line 438
    .local v1, "e":Ljava/sql/SQLException;
    invoke-virtual {v1}, Ljava/sql/SQLException;->printStackTrace()V

    .line 441
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSleepAim(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 288
    const/4 v2, 0x0

    .line 290
    .local v2, "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    :try_start_0
    new-instance v3, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;

    invoke-direct {v3, p0}, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    .end local v2    # "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    .local v3, "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    :try_start_1
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getLoginUser(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v5

    sget-object v6, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->sleepAim:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    invoke-virtual {v3, v5, v6}, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;->getOther(Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/database/entity/Other$Type;)Lcom/meizu/smart/wristband/models/database/entity/Other;

    move-result-object v1

    .line 292
    .local v1, "other":Lcom/meizu/smart/wristband/models/database/entity/Other;
    if-nez v1, :cond_0

    .line 293
    sget-object v5, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->sleepAim:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    const-string v6, "480"

    invoke-static {p0, v5, v6}, Lcom/meizu/smart/wristband/servers/DBUserApi;->setOtherInfo(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/Other$Type;Ljava/lang/String;)V

    .line 294
    const-string v4, "480"

    move-object v2, v3

    .line 307
    .end local v1    # "other":Lcom/meizu/smart/wristband/models/database/entity/Other;
    .end local v3    # "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    .restart local v2    # "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    :goto_0
    return-object v4

    .line 296
    .end local v2    # "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    .restart local v1    # "other":Lcom/meizu/smart/wristband/models/database/entity/Other;
    .restart local v3    # "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    :cond_0
    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/entity/Other;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 297
    .local v4, "value":Ljava/lang/String;
    invoke-static {v4}, Ldolphin/tools/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 298
    const-string v4, "480"
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    move-object v2, v3

    .line 301
    .end local v3    # "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    .restart local v2    # "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    goto :goto_0

    .line 303
    .end local v1    # "other":Lcom/meizu/smart/wristband/models/database/entity/Other;
    .end local v4    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Ljava/sql/SQLException;
    :goto_1
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 307
    const/4 v4, 0x0

    goto :goto_0

    .line 303
    .end local v0    # "e":Ljava/sql/SQLException;
    .end local v2    # "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    .restart local v3    # "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    .restart local v2    # "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    goto :goto_1
.end method

.method public static getSmartString(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 414
    :try_start_0
    new-instance v2, Lcom/meizu/smart/wristband/models/database/servers/SetServer;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;-><init>(Landroid/content/Context;)V

    .line 415
    .local v2, "server":Lcom/meizu/smart/wristband/models/database/servers/SetServer;
    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->getSmartSet()Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, "alertSmsString":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 417
    const-string v0, "0-0-0-0-0-0-0-0-0-0"

    .line 418
    sget-object v3, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->smart:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    const-string v4, "0-0-0-0-0-0-0-0-0-0"

    invoke-static {p0, v3, v4}, Lcom/meizu/smart/wristband/servers/DBUserApi;->setOtherInfo(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/Other$Type;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    .end local v0    # "alertSmsString":Ljava/lang/String;
    .end local v2    # "server":Lcom/meizu/smart/wristband/models/database/servers/SetServer;
    :cond_0
    :goto_0
    return-object v0

    .line 421
    :catch_0
    move-exception v1

    .line 422
    .local v1, "e":Ljava/sql/SQLException;
    invoke-virtual {v1}, Ljava/sql/SQLException;->printStackTrace()V

    .line 425
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSportAim(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 264
    const/4 v2, 0x0

    .line 266
    .local v2, "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    :try_start_0
    new-instance v3, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;

    invoke-direct {v3, p0}, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    .end local v2    # "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    .local v3, "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    :try_start_1
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getLoginUser(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v5

    sget-object v6, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->sportAim:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    invoke-virtual {v3, v5, v6}, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;->getOther(Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/database/entity/Other$Type;)Lcom/meizu/smart/wristband/models/database/entity/Other;

    move-result-object v1

    .line 268
    .local v1, "other":Lcom/meizu/smart/wristband/models/database/entity/Other;
    if-nez v1, :cond_0

    .line 269
    sget-object v5, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->sportAim:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    const-string v6, "10000"

    invoke-static {p0, v5, v6}, Lcom/meizu/smart/wristband/servers/DBUserApi;->setOtherInfo(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/Other$Type;Ljava/lang/String;)V

    .line 270
    const-string v4, "10000"

    move-object v2, v3

    .line 283
    .end local v1    # "other":Lcom/meizu/smart/wristband/models/database/entity/Other;
    .end local v3    # "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    .restart local v2    # "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    :goto_0
    return-object v4

    .line 272
    .end local v2    # "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    .restart local v1    # "other":Lcom/meizu/smart/wristband/models/database/entity/Other;
    .restart local v3    # "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    :cond_0
    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/entity/Other;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 273
    .local v4, "value":Ljava/lang/String;
    invoke-static {v4}, Ldolphin/tools/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 274
    const-string v4, "10000"
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    move-object v2, v3

    .line 277
    .end local v3    # "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    .restart local v2    # "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    goto :goto_0

    .line 279
    .end local v1    # "other":Lcom/meizu/smart/wristband/models/database/entity/Other;
    .end local v4    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Ljava/sql/SQLException;
    :goto_1
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 283
    const/4 v4, 0x0

    goto :goto_0

    .line 279
    .end local v0    # "e":Ljava/sql/SQLException;
    .end local v2    # "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    .restart local v3    # "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    .restart local v2    # "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    goto :goto_1
.end method

.method public static getSyncTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const v10, 0x7f080203

    .line 369
    const-string v7, "config"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 370
    .local v4, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v7, "checkbox_inch_time"

    const/4 v8, 0x1

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 371
    .local v6, "timeTw":Z
    const-string v7, "SYNC_TIME"

    const-string v8, ""

    invoke-static {p0, v7, v8}, Lcom/meizu/smart/wristband/utils/SharePreferencesUtil;->getValueByKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 372
    .local v5, "syncTime":Ljava/lang/String;
    invoke-static {v5}, Ldolphin/tools/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 373
    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 408
    :goto_0
    return-object v7

    .line 377
    :cond_0
    :try_start_0
    sget-object v7, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat7:Ljava/text/SimpleDateFormat;

    invoke-virtual {v7, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 378
    .local v2, "dt":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 379
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 380
    .local v1, "calendar1":Ljava/util/Calendar;
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 384
    sget-object v7, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat6:Ljava/text/SimpleDateFormat;

    invoke-virtual {v7, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat6:Ljava/text/SimpleDateFormat;

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 385
    sget-object v7, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat0:Ljava/text/SimpleDateFormat;

    invoke-virtual {v7, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 387
    :cond_1
    sget-object v7, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat3:Ljava/text/SimpleDateFormat;

    invoke-virtual {v7, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .line 404
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "calendar1":Ljava/util/Calendar;
    .end local v2    # "dt":Ljava/util/Date;
    :catch_0
    move-exception v3

    .line 405
    .local v3, "e":Ljava/text/ParseException;
    invoke-virtual {v3}, Ljava/text/ParseException;->printStackTrace()V

    .line 408
    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method public static getVibrationIntensity(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    :try_start_0
    new-instance v1, Lcom/meizu/smart/wristband/models/database/servers/SetServer;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;-><init>(Landroid/content/Context;)V

    .line 114
    .local v1, "server":Lcom/meizu/smart/wristband/models/database/servers/SetServer;
    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->getvibirateSet()Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, "vibirate":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 116
    const-string v2, "3"

    .line 117
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->storeVibrate(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v1    # "server":Lcom/meizu/smart/wristband/models/database/servers/SetServer;
    .end local v2    # "vibirate":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 125
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getWeightUnit(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 334
    const/4 v2, 0x0

    .line 336
    .local v2, "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    :try_start_0
    new-instance v3, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;

    invoke-direct {v3, p0}, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    .end local v2    # "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    .local v3, "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    :try_start_1
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getLoginUser(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v5

    sget-object v6, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->unit_weight:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    invoke-virtual {v3, v5, v6}, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;->getOther(Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/database/entity/Other$Type;)Lcom/meizu/smart/wristband/models/database/entity/Other;

    move-result-object v1

    .line 338
    .local v1, "other":Lcom/meizu/smart/wristband/models/database/entity/Other;
    if-nez v1, :cond_0

    .line 339
    sget-object v5, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->unit_weight:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    const-string v6, "0"

    invoke-static {p0, v5, v6}, Lcom/meizu/smart/wristband/servers/DBUserApi;->setOtherInfo(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/Other$Type;Ljava/lang/String;)V

    .line 340
    const-string v4, "0"

    move-object v2, v3

    .line 352
    .end local v1    # "other":Lcom/meizu/smart/wristband/models/database/entity/Other;
    .end local v3    # "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    .restart local v2    # "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    :goto_0
    return-object v4

    .line 342
    .end local v2    # "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    .restart local v1    # "other":Lcom/meizu/smart/wristband/models/database/entity/Other;
    .restart local v3    # "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    :cond_0
    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/entity/Other;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 343
    .local v4, "value":Ljava/lang/String;
    invoke-static {v4}, Ldolphin/tools/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 344
    const-string v4, "0"
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    move-object v2, v3

    .line 347
    .end local v3    # "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    .restart local v2    # "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    goto :goto_0

    .line 349
    .end local v1    # "other":Lcom/meizu/smart/wristband/models/database/entity/Other;
    .end local v4    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 350
    .local v0, "e":Ljava/sql/SQLException;
    :goto_1
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 352
    const/4 v4, 0x0

    goto :goto_0

    .line 349
    .end local v0    # "e":Ljava/sql/SQLException;
    .end local v2    # "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    .restart local v3    # "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    .restart local v2    # "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    goto :goto_1
.end method

.method public static saveAlarmString(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alarm"    # Ljava/lang/String;
    .param p2, "synced"    # Z

    .prologue
    .line 248
    :try_start_0
    new-instance v2, Lcom/meizu/smart/wristband/models/database/servers/SetServer;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;-><init>(Landroid/content/Context;)V

    .line 249
    .local v2, "server":Lcom/meizu/smart/wristband/models/database/servers/SetServer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    .local v1, "sb":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveAlarmString = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 251
    if-eqz p1, :cond_0

    .line 252
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->storeAlarm(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :cond_0
    const/4 v3, 0x1

    .line 260
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "server":Lcom/meizu/smart/wristband/models/database/servers/SetServer;
    :goto_0
    return v3

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 260
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static saveHandupString(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handup"    # Ljava/lang/String;
    .param p2, "saved"    # Z

    .prologue
    .line 179
    :try_start_0
    new-instance v1, Lcom/meizu/smart/wristband/models/database/servers/SetServer;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;-><init>(Landroid/content/Context;)V

    .line 180
    .local v1, "server":Lcom/meizu/smart/wristband/models/database/servers/SetServer;
    invoke-virtual {v1, p1, p2}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->storeHandup(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .end local v1    # "server":Lcom/meizu/smart/wristband/models/database/servers/SetServer;
    :goto_0
    return-void

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0
.end method

.method public static saveHeartRateMonitingString(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hrMonitor"    # Ljava/lang/String;
    .param p2, "saved"    # Z

    .prologue
    .line 188
    :try_start_0
    new-instance v1, Lcom/meizu/smart/wristband/models/database/servers/SetServer;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;-><init>(Landroid/content/Context;)V

    .line 189
    .local v1, "server":Lcom/meizu/smart/wristband/models/database/servers/SetServer;
    invoke-virtual {v1, p1, p2}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->storeHeartateMonitor(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .end local v1    # "server":Lcom/meizu/smart/wristband/models/database/servers/SetServer;
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0
.end method

.method public static saveLongSitString(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "longsitString"    # Ljava/lang/String;
    .param p2, "saved"    # Z

    .prologue
    .line 216
    :try_start_0
    new-instance v1, Lcom/meizu/smart/wristband/models/database/servers/SetServer;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;-><init>(Landroid/content/Context;)V

    .line 217
    .local v1, "server":Lcom/meizu/smart/wristband/models/database/servers/SetServer;
    invoke-virtual {v1, p1, p2}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->storeSedentary(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .end local v1    # "server":Lcom/meizu/smart/wristband/models/database/servers/SetServer;
    :goto_0
    return-void

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0
.end method

.method public static saveTimeDisplayString(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # Ljava/lang/String;
    .param p2, "saved"    # Z

    .prologue
    .line 198
    :try_start_0
    new-instance v1, Lcom/meizu/smart/wristband/models/database/servers/SetServer;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;-><init>(Landroid/content/Context;)V

    .line 199
    .local v1, "server":Lcom/meizu/smart/wristband/models/database/servers/SetServer;
    invoke-virtual {v1, p1, p2}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->storeTimeDispay(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .end local v1    # "server":Lcom/meizu/smart/wristband/models/database/servers/SetServer;
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0
.end method

.method public static saveVibrateString(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vibrate"    # Ljava/lang/String;
    .param p2, "saved"    # Z

    .prologue
    .line 207
    :try_start_0
    new-instance v1, Lcom/meizu/smart/wristband/models/database/servers/SetServer;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;-><init>(Landroid/content/Context;)V

    .line 208
    .local v1, "server":Lcom/meizu/smart/wristband/models/database/servers/SetServer;
    invoke-virtual {v1, p1, p2}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->storeVibrate(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    .end local v1    # "server":Lcom/meizu/smart/wristband/models/database/servers/SetServer;
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setOtherInfo(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/Other$Type;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Lcom/meizu/smart/wristband/models/database/entity/Other$Type;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 357
    :try_start_0
    new-instance v1, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;-><init>(Landroid/content/Context;)V

    .line 358
    .local v1, "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    new-instance v2, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->getLoginUser()Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;->createOrUpdate(Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/database/entity/Other$Type;Ljava/lang/String;)Lcom/meizu/smart/wristband/models/database/entity/Other;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    .end local v1    # "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    :goto_0
    return-void

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setSyncTime(Landroid/content/Context;Ljava/util/Date;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Ljava/util/Date;

    .prologue
    .line 365
    const-string v0, "SYNC_TIME"

    sget-object v1, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat7:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/meizu/smart/wristband/utils/SharePreferencesUtil;->setValueAtKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    return-void
.end method
