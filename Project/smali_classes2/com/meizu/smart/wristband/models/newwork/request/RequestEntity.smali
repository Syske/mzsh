.class public Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity;
.super Ljava/lang/Object;
.source "RequestEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity$Sysdata;
    }
.end annotation


# static fields
.field public static sysdata:Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity$Sysdata;


# instance fields
.field private rqdata:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static generateSysData(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity$Sysdata;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 143
    new-instance v5, Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity$Sysdata;

    invoke-direct {v5}, Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity$Sysdata;-><init>()V

    sput-object v5, Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity;->sysdata:Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity$Sysdata;

    .line 144
    sget-object v5, Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity;->sysdata:Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity$Sysdata;

    const-string v6, "1"

    invoke-virtual {v5, v6}, Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity$Sysdata;->setProtocolType(Ljava/lang/String;)V

    .line 145
    sget-object v5, Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity;->sysdata:Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity$Sysdata;

    invoke-static {p0}, Ldolphin/tools/util/AppUtil;->getVerName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity$Sysdata;->setAppVer(Ljava/lang/String;)V

    .line 146
    const/4 v0, 0x0

    .line 148
    .local v0, "btDev":Lcom/meizu/smart/wristband/models/database/entity/BtDev;
    :try_start_0
    new-instance v5, Lcom/meizu/smart/wristband/models/database/servers/BtDevServer;

    invoke-direct {v5, p0}, Lcom/meizu/smart/wristband/models/database/servers/BtDevServer;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x0

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lcom/meizu/smart/wristband/models/database/servers/BtDevServer;->getBtDev(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/lang/String;)Lcom/meizu/smart/wristband/models/database/entity/BtDev;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 152
    :goto_0
    if-eqz v0, :cond_0

    .line 153
    sget-object v5, Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity;->sysdata:Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity$Sysdata;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getCoreVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity$Sysdata;->setDeviceVer(Ljava/lang/String;)V

    .line 154
    sget-object v5, Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity;->sysdata:Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity$Sysdata;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getNordicVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity$Sysdata;->setBlueVer(Ljava/lang/String;)V

    .line 157
    :cond_0
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 158
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    sget-object v5, Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity;->sysdata:Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity$Sysdata;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity$Sysdata;->setDeviceId(Ljava/lang/String;)V

    .line 159
    sget-object v5, Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity;->sysdata:Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity$Sysdata;

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity$Sysdata;->setMobileType(Ljava/lang/String;)V

    .line 160
    sget-object v5, Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity;->sysdata:Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity$Sysdata;

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity$Sysdata;->setSystemVer(Ljava/lang/String;)V

    .line 161
    sget-object v5, Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity;->sysdata:Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity$Sysdata;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity$Sysdata;->setTimeZone(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v3, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 163
    .local v3, "locale":Ljava/util/Locale;
    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v5, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v5, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    .line 164
    invoke-virtual {v5, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v5, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    const-string v2, "zh"

    .line 166
    .local v2, "language":Ljava/lang/String;
    :goto_1
    sget-object v5, Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity;->sysdata:Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity$Sysdata;

    invoke-virtual {v5, v2}, Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity$Sysdata;->setSystemLang(Ljava/lang/String;)V

    .line 167
    sget-object v5, Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity;->sysdata:Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity$Sysdata;

    sget-object v6, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat1:Ljava/text/SimpleDateFormat;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity$Sysdata;->setSendDate(Ljava/lang/String;)V

    .line 168
    sget-object v5, Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity;->sysdata:Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity$Sysdata;

    return-object v5

    .line 149
    .end local v2    # "language":Ljava/lang/String;
    .end local v3    # "locale":Ljava/util/Locale;
    .end local v4    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v1

    .line 150
    .local v1, "e":Ljava/sql/SQLException;
    invoke-virtual {v1}, Ljava/sql/SQLException;->printStackTrace()V

    goto/16 :goto_0

    .line 164
    .end local v1    # "e":Ljava/sql/SQLException;
    .restart local v3    # "locale":Ljava/util/Locale;
    .restart local v4    # "tm":Landroid/telephony/TelephonyManager;
    :cond_2
    const-string v2, "en"

    goto :goto_1
.end method

.method public static generateSysData(Landroid/content/Context;Ljava/lang/String;)Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity$Sysdata;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ManufCode"    # Ljava/lang/String;

    .prologue
    .line 199
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getBtDevMarksCode(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 226
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getRqdata()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity;->rqdata:Ljava/lang/Object;

    return-object v0
.end method

.method public getSysdata()Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity$Sysdata;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity;->sysdata:Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity$Sysdata;

    return-object v0
.end method

.method public setRqdata(Ljava/lang/Object;)V
    .locals 0
    .param p1, "rqdata"    # Ljava/lang/Object;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity;->rqdata:Ljava/lang/Object;

    .line 38
    return-void
.end method

.method public setSysdata(Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity$Sysdata;)V
    .locals 0
    .param p1, "sysdata"    # Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity$Sysdata;

    .prologue
    .line 29
    sput-object p1, Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity;->sysdata:Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity$Sysdata;

    .line 30
    return-void
.end method
