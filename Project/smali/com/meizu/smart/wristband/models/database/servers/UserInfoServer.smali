.class public Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
.super Ljava/lang/Object;
.source "UserInfoServer.java"


# instance fields
.field private context:Landroid/content/Context;

.field private loginInfoServer:Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;

.field private otherServer:Lcom/meizu/smart/wristband/models/database/servers/OtherServer;

.field public userDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/User;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->context:Landroid/content/Context;

    .line 38
    invoke-static {p1}, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->getDataBaseHelper(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/DatabaseHelper;

    move-result-object v0

    .line 39
    .local v0, "dbHelper":Lcom/meizu/smart/wristband/models/database/DatabaseHelper;
    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->getUserDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->userDao:Lcom/j256/ormlite/dao/Dao;

    .line 40
    new-instance v1, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;

    invoke-direct {v1, p1}, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->otherServer:Lcom/meizu/smart/wristband/models/database/servers/OtherServer;

    .line 41
    new-instance v1, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;

    invoke-direct {v1, p1}, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->loginInfoServer:Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;

    .line 43
    return-void
.end method


# virtual methods
.method public getLoginUser()Lcom/meizu/smart/wristband/models/database/entity/User;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 53
    new-instance v3, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;

    iget-object v4, p0, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;->getLoginInfo()Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer$LoginInfo;

    .line 54
    new-instance v1, Lcom/meizu/smart/wristband/models/database/entity/User;
    invoke-direct {v1},  Lcom/meizu/smart/wristband/models/database/entity/User;-><init>()V

    .line 55
    const-string v5, "syske"
    invoke-virtual {v1, v5}, Lcom/meizu/smart/wristband/models/database/entity/User;->setId(Ljava/lang/String;)V
    
    .line 56
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/meizu/smart/wristband/models/database/entity/User;->setSync(Ljava/lang/Boolean;)V
    invoke-virtual {v1, v5}, Lcom/meizu/smart/wristband/models/database/entity/User;->setIsEmpty(Ljava/lang/Boolean;)V
    
    const-string v5, "180"
    invoke-virtual {v1, v5}, Lcom/meizu/smart/wristband/models/database/entity/User;->setWeight(Ljava/lang/String;)V
    invoke-virtual {v1, v5}, Lcom/meizu/smart/wristband/models/database/entity/User;->setHeight(Ljava/lang/String;)V 
    
    return-object v1
.end method

.method public saveUserInfo(Landroid/content/Context;Ljava/lang/String;Lcom/meizu/smart/wristband/models/newwork/response/Logindata;)Z
    .locals 35
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userid"    # Ljava/lang/String;
    .param p3, "logindata"    # Lcom/meizu/smart/wristband/models/newwork/response/Logindata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->getLoginUser()Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v27

    .line 84
    .local v27, "user":Lcom/meizu/smart/wristband/models/database/entity/User;
    if-nez v27, :cond_0

    .line 85
    new-instance v27, Lcom/meizu/smart/wristband/models/database/entity/User;

    .end local v27    # "user":Lcom/meizu/smart/wristband/models/database/entity/User;
    invoke-direct/range {v27 .. v27}, Lcom/meizu/smart/wristband/models/database/entity/User;-><init>()V

    .line 86
    .restart local v27    # "user":Lcom/meizu/smart/wristband/models/database/entity/User;
    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/User;->setId(Ljava/lang/String;)V

    .line 87
    const/16 v30, 0x1

    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/User;->setIsEmpty(Ljava/lang/Boolean;)V

    .line 88
    const-string v30, "170"

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/User;->setHeight(Ljava/lang/String;)V

    .line 89
    const-string v30, "70"

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/User;->setWeight(Ljava/lang/String;)V

    .line 90
    sget-object v30, Lcom/meizu/smart/wristband/constant/Sex;->MALE:Lcom/meizu/smart/wristband/constant/Sex;

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/User;->setSex(Lcom/meizu/smart/wristband/constant/Sex;)V

    .line 91
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f08024b

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/constant/Sex;->convert1(Landroid/content/Context;Ljava/lang/String;)Lcom/meizu/smart/wristband/constant/Sex;

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->userDao:Lcom/j256/ormlite/dao/Dao;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    .line 95
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/meizu/smart/wristband/models/newwork/response/Logindata;->getInfo()Lcom/meizu/smart/wristband/models/newwork/response/UserInfodata;

    move-result-object v28

    .line 96
    .local v28, "userInfo":Lcom/meizu/smart/wristband/models/newwork/response/UserInfodata;
    if-eqz v28, :cond_3

    .line 97
    invoke-virtual/range {v28 .. v28}, Lcom/meizu/smart/wristband/models/newwork/response/UserInfodata;->getPortraitUrl()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/User;->setPortraitUrl(Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {v28 .. v28}, Lcom/meizu/smart/wristband/models/newwork/response/UserInfodata;->getAddress()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/User;->setAddress(Ljava/lang/String;)V

    .line 99
    invoke-virtual/range {v28 .. v28}, Lcom/meizu/smart/wristband/models/newwork/response/UserInfodata;->getBirthday()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/User;->setBirthday(Ljava/lang/String;)V

    .line 100
    invoke-virtual/range {v28 .. v28}, Lcom/meizu/smart/wristband/models/newwork/response/UserInfodata;->getSexCode()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/meizu/smart/wristband/constant/Sex;->convert(Ljava/lang/String;)Lcom/meizu/smart/wristband/constant/Sex;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/User;->setSex(Lcom/meizu/smart/wristband/constant/Sex;)V

    .line 101
    invoke-virtual/range {v28 .. v28}, Lcom/meizu/smart/wristband/models/newwork/response/UserInfodata;->getNickname()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/User;->setNickname(Ljava/lang/String;)V

    .line 102
    const/4 v12, 0x0

    .line 103
    .local v12, "height":Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Lcom/meizu/smart/wristband/models/newwork/response/UserInfodata;->getHeight()Ljava/lang/String;

    move-result-object v30

    if-eqz v30, :cond_1

    .line 104
    invoke-virtual/range {v28 .. v28}, Lcom/meizu/smart/wristband/models/newwork/response/UserInfodata;->getHeight()Ljava/lang/String;

    move-result-object v30

    const-string v31, "."

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 105
    .local v10, "dotIndex":I
    const/16 v30, -0x1

    move/from16 v0, v30

    if-ne v10, v0, :cond_15

    invoke-virtual/range {v28 .. v28}, Lcom/meizu/smart/wristband/models/newwork/response/UserInfodata;->getHeight()Ljava/lang/String;

    move-result-object v12

    .line 107
    .end local v10    # "dotIndex":I
    :cond_1
    :goto_0
    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Lcom/meizu/smart/wristband/models/database/entity/User;->setHeight(Ljava/lang/String;)V

    .line 108
    const/16 v29, 0x0

    .line 109
    .local v29, "weight":Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Lcom/meizu/smart/wristband/models/newwork/response/UserInfodata;->getWeight()Ljava/lang/String;

    move-result-object v30

    if-eqz v30, :cond_2

    .line 110
    invoke-virtual/range {v28 .. v28}, Lcom/meizu/smart/wristband/models/newwork/response/UserInfodata;->getWeight()Ljava/lang/String;

    move-result-object v30

    const-string v31, "."

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 111
    .restart local v10    # "dotIndex":I
    const/16 v30, -0x1

    move/from16 v0, v30

    if-ne v10, v0, :cond_16

    invoke-virtual/range {v28 .. v28}, Lcom/meizu/smart/wristband/models/newwork/response/UserInfodata;->getWeight()Ljava/lang/String;

    move-result-object v29

    .line 113
    .end local v10    # "dotIndex":I
    :cond_2
    :goto_1
    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/User;->setWeight(Ljava/lang/String;)V

    .line 114
    invoke-static/range {v28 .. v28}, Lcom/meizu/smart/wristband/models/database/FBDBTools;->isEntityBlank(Lcom/meizu/smart/wristband/models/newwork/response/UserInfodata;)Z

    move-result v30

    if-nez v30, :cond_3

    .line 115
    const/16 v30, 0x0

    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/User;->setIsEmpty(Ljava/lang/Boolean;)V

    .line 118
    .end local v12    # "height":Ljava/lang/String;
    .end local v29    # "weight":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->userDao:Lcom/j256/ormlite/dao/Dao;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    .line 120
    invoke-virtual/range {p3 .. p3}, Lcom/meizu/smart/wristband/models/newwork/response/Logindata;->getAim()Lcom/meizu/smart/wristband/models/newwork/response/AimSetdata;

    move-result-object v5

    .line 121
    .local v5, "aim":Lcom/meizu/smart/wristband/models/newwork/response/AimSetdata;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/meizu/smart/wristband/models/newwork/response/AimSetdata;->getSportAim()I

    move-result v30

    if-eqz v30, :cond_4

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->otherServer:Lcom/meizu/smart/wristband/models/database/servers/OtherServer;

    move-object/from16 v30, v0

    sget-object v31, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->sportAim:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, ""

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v5}, Lcom/meizu/smart/wristband/models/newwork/response/AimSetdata;->getSportAim()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;->createOrUpdate(Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/database/entity/Other$Type;Ljava/lang/String;Z)Lcom/meizu/smart/wristband/models/database/entity/Other;

    .line 125
    :cond_4
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/meizu/smart/wristband/models/newwork/response/AimSetdata;->getSleepAim()Ljava/lang/String;

    move-result-object v30

    if-eqz v30, :cond_5

    invoke-virtual {v5}, Lcom/meizu/smart/wristband/models/newwork/response/AimSetdata;->getSleepAim()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v30

    if-lez v30, :cond_5

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->otherServer:Lcom/meizu/smart/wristband/models/database/servers/OtherServer;

    move-object/from16 v30, v0

    sget-object v31, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->sleepAim:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, ""

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v5}, Lcom/meizu/smart/wristband/models/newwork/response/AimSetdata;->getSleepAim()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;->createOrUpdate(Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/database/entity/Other$Type;Ljava/lang/String;Z)Lcom/meizu/smart/wristband/models/database/entity/Other;

    .line 130
    :cond_5
    invoke-virtual/range {p3 .. p3}, Lcom/meizu/smart/wristband/models/newwork/response/Logindata;->getSet()Lcom/meizu/smart/wristband/models/newwork/response/ParamSetdata;

    move-result-object v11

    .line 131
    .local v11, "entity":Lcom/meizu/smart/wristband/models/newwork/response/ParamSetdata;
    if-eqz v11, :cond_13

    .line 132
    new-instance v24, Lcom/meizu/smart/wristband/models/database/servers/SetServer;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;-><init>(Landroid/content/Context;)V

    .line 133
    .local v24, "setServer":Lcom/meizu/smart/wristband/models/database/servers/SetServer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->otherServer:Lcom/meizu/smart/wristband/models/database/servers/OtherServer;

    move-object/from16 v30, v0

    sget-object v31, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->alarm:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;->getOther(Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/database/entity/Other$Type;)Lcom/meizu/smart/wristband/models/database/entity/Other;

    move-result-object v16

    .line 134
    .local v16, "other":Lcom/meizu/smart/wristband/models/database/entity/Other;
    if-eqz v16, :cond_6

    invoke-virtual/range {v16 .. v16}, Lcom/meizu/smart/wristband/models/database/entity/Other;->getSync()Ljava/lang/Boolean;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    if-eqz v30, :cond_7

    .line 135
    :cond_6
    invoke-virtual {v11}, Lcom/meizu/smart/wristband/models/newwork/response/ParamSetdata;->getAlarm()Ljava/lang/String;

    move-result-object v7

    .line 136
    .local v7, "alarm":Ljava/lang/String;
    const/16 v30, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v7, v1}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->storeAlarm(Ljava/lang/String;Z)V

    .line 138
    .end local v7    # "alarm":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->otherServer:Lcom/meizu/smart/wristband/models/database/servers/OtherServer;

    move-object/from16 v30, v0

    sget-object v31, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->music:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;->getOther(Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/database/entity/Other$Type;)Lcom/meizu/smart/wristband/models/database/entity/Other;

    move-result-object v17

    .line 139
    .local v17, "other1":Lcom/meizu/smart/wristband/models/database/entity/Other;
    if-eqz v17, :cond_8

    invoke-virtual/range {v17 .. v17}, Lcom/meizu/smart/wristband/models/database/entity/Other;->getSync()Ljava/lang/Boolean;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    if-eqz v30, :cond_9

    .line 140
    :cond_8
    invoke-virtual {v11}, Lcom/meizu/smart/wristband/models/newwork/response/ParamSetdata;->getMusic()Ljava/lang/String;

    move-result-object v15

    .line 141
    .local v15, "music":Ljava/lang/String;
    const/16 v30, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v15, v1}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->storeMusic(Ljava/lang/String;Z)V

    .line 143
    .end local v15    # "music":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->otherServer:Lcom/meizu/smart/wristband/models/database/servers/OtherServer;

    move-object/from16 v30, v0

    sget-object v31, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->caller:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;->getOther(Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/database/entity/Other$Type;)Lcom/meizu/smart/wristband/models/database/entity/Other;

    move-result-object v18

    .line 144
    .local v18, "other2":Lcom/meizu/smart/wristband/models/database/entity/Other;
    if-eqz v18, :cond_a

    invoke-virtual/range {v18 .. v18}, Lcom/meizu/smart/wristband/models/database/entity/Other;->getSync()Ljava/lang/Boolean;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    if-eqz v30, :cond_b

    .line 145
    :cond_a
    invoke-virtual {v11}, Lcom/meizu/smart/wristband/models/newwork/response/ParamSetdata;->getCaller()Ljava/lang/String;

    move-result-object v8

    .line 146
    .local v8, "caller":Ljava/lang/String;
    const/16 v30, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v8, v1}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->storeCaller(Ljava/lang/String;Z)V

    .line 148
    .end local v8    # "caller":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->otherServer:Lcom/meizu/smart/wristband/models/database/servers/OtherServer;

    move-object/from16 v30, v0

    sget-object v31, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->sedentary:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;->getOther(Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/database/entity/Other$Type;)Lcom/meizu/smart/wristband/models/database/entity/Other;

    move-result-object v19

    .line 149
    .local v19, "other3":Lcom/meizu/smart/wristband/models/database/entity/Other;
    if-eqz v19, :cond_c

    invoke-virtual/range {v19 .. v19}, Lcom/meizu/smart/wristband/models/database/entity/Other;->getSync()Ljava/lang/Boolean;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    if-eqz v30, :cond_d

    .line 150
    :cond_c
    invoke-virtual {v11}, Lcom/meizu/smart/wristband/models/newwork/response/ParamSetdata;->getSedentary()Ljava/lang/String;

    move-result-object v23

    .line 151
    .local v23, "sedentary":Ljava/lang/String;
    const/16 v30, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->storeSedentary(Ljava/lang/String;Z)V

    .line 153
    .end local v23    # "sedentary":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->otherServer:Lcom/meizu/smart/wristband/models/database/servers/OtherServer;

    move-object/from16 v30, v0

    sget-object v31, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->aimSwich:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;->getOther(Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/database/entity/Other$Type;)Lcom/meizu/smart/wristband/models/database/entity/Other;

    move-result-object v20

    .line 154
    .local v20, "other4":Lcom/meizu/smart/wristband/models/database/entity/Other;
    if-eqz v20, :cond_e

    invoke-virtual/range {v20 .. v20}, Lcom/meizu/smart/wristband/models/database/entity/Other;->getSync()Ljava/lang/Boolean;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    if-eqz v30, :cond_f

    .line 155
    :cond_e
    invoke-virtual {v11}, Lcom/meizu/smart/wristband/models/newwork/response/ParamSetdata;->getAim()Ljava/lang/String;

    move-result-object v6

    .line 156
    .local v6, "aimSwich":Ljava/lang/String;
    const/16 v30, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v6, v1}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->storeAimSwich(Ljava/lang/String;Z)V

    .line 158
    .end local v6    # "aimSwich":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->otherServer:Lcom/meizu/smart/wristband/models/database/servers/OtherServer;

    move-object/from16 v30, v0

    sget-object v31, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->unit_length:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;->getOther(Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/database/entity/Other$Type;)Lcom/meizu/smart/wristband/models/database/entity/Other;

    move-result-object v21

    .line 159
    .local v21, "other5":Lcom/meizu/smart/wristband/models/database/entity/Other;
    if-eqz v21, :cond_10

    invoke-virtual/range {v21 .. v21}, Lcom/meizu/smart/wristband/models/database/entity/Other;->getSync()Ljava/lang/Boolean;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    if-eqz v30, :cond_11

    .line 160
    :cond_10
    invoke-virtual {v11}, Lcom/meizu/smart/wristband/models/newwork/response/ParamSetdata;->getDistanceUnit()Ljava/lang/String;

    move-result-object v25

    .line 161
    .local v25, "unit_length":Ljava/lang/String;
    const/16 v30, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->storeUnitLength(Ljava/lang/String;Z)V

    .line 163
    .end local v25    # "unit_length":Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->otherServer:Lcom/meizu/smart/wristband/models/database/servers/OtherServer;

    move-object/from16 v30, v0

    sget-object v31, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->unit_weight:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;->getOther(Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/database/entity/Other$Type;)Lcom/meizu/smart/wristband/models/database/entity/Other;

    move-result-object v22

    .line 164
    .local v22, "other6":Lcom/meizu/smart/wristband/models/database/entity/Other;
    if-eqz v22, :cond_12

    invoke-virtual/range {v22 .. v22}, Lcom/meizu/smart/wristband/models/database/entity/Other;->getSync()Ljava/lang/Boolean;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    if-eqz v30, :cond_13

    .line 165
    :cond_12
    invoke-virtual {v11}, Lcom/meizu/smart/wristband/models/newwork/response/ParamSetdata;->getWeightUnit()Ljava/lang/String;

    move-result-object v26

    .line 166
    .local v26, "unit_weight":Ljava/lang/String;
    const/16 v30, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->storeUnitLength(Ljava/lang/String;Z)V

    .line 170
    .end local v16    # "other":Lcom/meizu/smart/wristband/models/database/entity/Other;
    .end local v17    # "other1":Lcom/meizu/smart/wristband/models/database/entity/Other;
    .end local v18    # "other2":Lcom/meizu/smart/wristband/models/database/entity/Other;
    .end local v19    # "other3":Lcom/meizu/smart/wristband/models/database/entity/Other;
    .end local v20    # "other4":Lcom/meizu/smart/wristband/models/database/entity/Other;
    .end local v21    # "other5":Lcom/meizu/smart/wristband/models/database/entity/Other;
    .end local v22    # "other6":Lcom/meizu/smart/wristband/models/database/entity/Other;
    .end local v24    # "setServer":Lcom/meizu/smart/wristband/models/database/servers/SetServer;
    .end local v26    # "unit_weight":Ljava/lang/String;
    :cond_13
    invoke-virtual/range {p3 .. p3}, Lcom/meizu/smart/wristband/models/newwork/response/Logindata;->getMac()Ljava/util/List;

    move-result-object v14

    .line 171
    .local v14, "macs":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/newwork/response/MacInfo;>;"
    if-eqz v14, :cond_17

    .line 172
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :cond_14
    :goto_2
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_17

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/meizu/smart/wristband/models/newwork/response/MacInfo;

    .line 173
    .local v13, "macItem":Lcom/meizu/smart/wristband/models/newwork/response/MacInfo;
    iget-object v0, v13, Lcom/meizu/smart/wristband/models/newwork/response/MacInfo;->mac:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ldolphin/tools/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_14

    .line 176
    new-instance v9, Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    invoke-direct {v9}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;-><init>()V

    .line 177
    .local v9, "dev":Lcom/meizu/smart/wristband/models/database/entity/BtDev;
    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 178
    iget-object v0, v13, Lcom/meizu/smart/wristband/models/newwork/response/MacInfo;->manufCode:Ljava/lang/Integer;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/meizu/smart/wristband/constant/Producter;->manufacturerToDeviceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->setProductorname(Ljava/lang/String;)V

    .line 179
    const-string v31, "%03d"

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    iget-object v0, v13, Lcom/meizu/smart/wristband/models/newwork/response/MacInfo;->manufCode:Ljava/lang/Integer;

    move-object/from16 v34, v0

    aput-object v34, v32, v33

    invoke-static/range {v31 .. v32}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->setProductor(Ljava/lang/String;)V

    .line 180
    iget-object v0, v13, Lcom/meizu/smart/wristband/models/newwork/response/MacInfo;->mac:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->setMac(Ljava/lang/String;)V

    .line 181
    const/16 v31, 0x1

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->setSync(Ljava/lang/Boolean;)V

    .line 182
    new-instance v31, Lcom/meizu/smart/wristband/models/database/servers/BtDevServer;

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/meizu/smart/wristband/models/database/servers/BtDevServer;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Lcom/meizu/smart/wristband/models/database/servers/BtDevServer;->createOrUpdateDevice(Lcom/meizu/smart/wristband/models/database/entity/BtDev;)V

    goto :goto_2

    .line 105
    .end local v5    # "aim":Lcom/meizu/smart/wristband/models/newwork/response/AimSetdata;
    .end local v9    # "dev":Lcom/meizu/smart/wristband/models/database/entity/BtDev;
    .end local v11    # "entity":Lcom/meizu/smart/wristband/models/newwork/response/ParamSetdata;
    .end local v13    # "macItem":Lcom/meizu/smart/wristband/models/newwork/response/MacInfo;
    .end local v14    # "macs":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/newwork/response/MacInfo;>;"
    .restart local v10    # "dotIndex":I
    .restart local v12    # "height":Ljava/lang/String;
    :cond_15
    invoke-virtual/range {v28 .. v28}, Lcom/meizu/smart/wristband/models/newwork/response/UserInfodata;->getHeight()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 111
    .restart local v29    # "weight":Ljava/lang/String;
    :cond_16
    invoke-virtual/range {v28 .. v28}, Lcom/meizu/smart/wristband/models/newwork/response/UserInfodata;->getWeight()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_1

    .line 186
    .end local v10    # "dotIndex":I
    .end local v12    # "height":Ljava/lang/String;
    .end local v29    # "weight":Ljava/lang/String;
    .restart local v5    # "aim":Lcom/meizu/smart/wristband/models/newwork/response/AimSetdata;
    .restart local v11    # "entity":Lcom/meizu/smart/wristband/models/newwork/response/ParamSetdata;
    .restart local v14    # "macs":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/newwork/response/MacInfo;>;"
    :cond_17
    const/16 v30, 0x1

    return v30
.end method

.method public storeImage(Lcom/meizu/smart/wristband/models/database/entity/User;)V
    .locals 7
    .param p1, "newUser"    # Lcom/meizu/smart/wristband/models/database/entity/User;

    .prologue
    .line 191
    :try_start_0
    new-instance v4, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;

    iget-object v5, p0, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;->getLoginInfo()Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer$LoginInfo;

    move-result-object v1

    .line 192
    .local v1, "loginInfo":Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer$LoginInfo;
    iget-object v4, p0, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->userDao:Lcom/j256/ormlite/dao/Dao;

    const-string v5, "id"

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer$LoginInfo;->getAccount()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 193
    .local v3, "userList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/User;>;"
    const/4 v2, 0x0

    .line 194
    .local v2, "user":Lcom/meizu/smart/wristband/models/database/entity/User;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 195
    :cond_0
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/meizu/smart/wristband/models/database/entity/User;->setSync(Ljava/lang/Boolean;)V

    .line 196
    iget-object v4, p0, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->userDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4, p1}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    .line 206
    .end local v1    # "loginInfo":Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer$LoginInfo;
    .end local v2    # "user":Lcom/meizu/smart/wristband/models/database/entity/User;
    .end local v3    # "userList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/User;>;"
    :goto_0
    return-void

    .line 198
    .restart local v1    # "loginInfo":Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer$LoginInfo;
    .restart local v2    # "user":Lcom/meizu/smart/wristband/models/database/entity/User;
    .restart local v3    # "userList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/User;>;"
    :cond_1
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "user":Lcom/meizu/smart/wristband/models/database/entity/User;
    check-cast v2, Lcom/meizu/smart/wristband/models/database/entity/User;

    .line 199
    .restart local v2    # "user":Lcom/meizu/smart/wristband/models/database/entity/User;
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/User;->getPortrait()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/meizu/smart/wristband/models/database/entity/User;->setPortrait(Ljava/lang/String;)V

    .line 200
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/meizu/smart/wristband/models/database/entity/User;->setSync(Ljava/lang/Boolean;)V

    .line 201
    iget-object v4, p0, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->userDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4, v2}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 203
    .end local v1    # "loginInfo":Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer$LoginInfo;
    .end local v2    # "user":Lcom/meizu/smart/wristband/models/database/entity/User;
    .end local v3    # "userList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/User;>;"
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0
.end method

.method public storeInfo(Lcom/meizu/smart/wristband/models/database/entity/User;)V
    .locals 7
    .param p1, "newUser"    # Lcom/meizu/smart/wristband/models/database/entity/User;

    .prologue
    .line 66
    :try_start_0
    new-instance v4, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;

    iget-object v5, p0, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;->getLoginInfo()Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer$LoginInfo;

    move-result-object v1

    .line 67
    .local v1, "loginInfo":Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer$LoginInfo;
    iget-object v4, p0, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->userDao:Lcom/j256/ormlite/dao/Dao;

    const-string v5, "id"

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer$LoginInfo;->getAccount()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 68
    .local v3, "userList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/User;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 69
    :cond_0
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/meizu/smart/wristband/models/database/entity/User;->setSync(Ljava/lang/Boolean;)V

    .line 70
    iget-object v4, p0, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->userDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4, p1}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    .line 79
    .end local v1    # "loginInfo":Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer$LoginInfo;
    .end local v3    # "userList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/User;>;"
    :goto_0
    return-void

    .line 72
    .restart local v1    # "loginInfo":Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer$LoginInfo;
    .restart local v3    # "userList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/User;>;"
    :cond_1
    move-object v2, p1

    .line 73
    .local v2, "user":Lcom/meizu/smart/wristband/models/database/entity/User;
    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer$LoginInfo;->getAccount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/meizu/smart/wristband/models/database/entity/User;->setId(Ljava/lang/String;)V

    .line 74
    iget-object v4, p0, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->userDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4, v2}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    .end local v1    # "loginInfo":Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer$LoginInfo;
    .end local v2    # "user":Lcom/meizu/smart/wristband/models/database/entity/User;
    .end local v3    # "userList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/User;>;"
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0
.end method
