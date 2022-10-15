.class public Lcom/meizu/smart/wristband/models/database/servers/SetServer;
.super Ljava/lang/Object;
.source "SetServer.java"


# instance fields
.field private context:Landroid/content/Context;

.field public dbHelper:Lcom/meizu/smart/wristband/models/database/DatabaseHelper;

.field public otherDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/Other;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field user:Lcom/meizu/smart/wristband/models/database/entity/User;


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
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    .line 23
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->context:Landroid/content/Context;

    .line 24
    invoke-static {p1}, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->getDataBaseHelper(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/DatabaseHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->dbHelper:Lcom/meizu/smart/wristband/models/database/DatabaseHelper;

    .line 25
    new-instance v0, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;

    invoke-direct {v0, p1}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;-><init>(Landroid/content/Context;)V

    .line 26
    .local v0, "userInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->getLoginUser()Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    .line 27
    iget-object v1, p0, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->dbHelper:Lcom/meizu/smart/wristband/models/database/DatabaseHelper;

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->getOtherDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->otherDao:Lcom/j256/ormlite/dao/Dao;

    .line 28
    return-void
.end method


# virtual methods
.method public getAlarmSet()Ljava/lang/String;
    .locals 3

    .prologue
    .line 160
    new-instance v1, Lcom/meizu/smart/wristband/models/database/entity/Other;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/database/entity/Other;-><init>()V

    .line 161
    .local v1, "other":Lcom/meizu/smart/wristband/models/database/entity/Other;
    iget-object v2, p0, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 162
    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->alarm:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setType(Lcom/meizu/smart/wristband/models/database/entity/Other$Type;)V

    .line 163
    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->getdata(Lcom/meizu/smart/wristband/models/database/entity/Other;)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "alarmSet":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 166
    .end local v0    # "alarmSet":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "alarmSet":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAntLostSet()Ljava/lang/String;
    .locals 3

    .prologue
    .line 294
    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Other;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/models/database/entity/Other;-><init>()V

    .line 295
    .local v0, "other":Lcom/meizu/smart/wristband/models/database/entity/Other;
    iget-object v2, p0, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v0, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 296
    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->antlost:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    invoke-virtual {v0, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setType(Lcom/meizu/smart/wristband/models/database/entity/Other$Type;)V

    .line 297
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->getdata(Lcom/meizu/smart/wristband/models/database/entity/Other;)Ljava/lang/String;

    move-result-object v1

    .line 298
    .local v1, "smartSet":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 300
    .end local v1    # "smartSet":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v1    # "smartSet":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCallerSet()Ljava/lang/String;
    .locals 3

    .prologue
    .line 221
    new-instance v1, Lcom/meizu/smart/wristband/models/database/entity/Other;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/database/entity/Other;-><init>()V

    .line 222
    .local v1, "other":Lcom/meizu/smart/wristband/models/database/entity/Other;
    iget-object v2, p0, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 223
    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->caller:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setType(Lcom/meizu/smart/wristband/models/database/entity/Other$Type;)V

    .line 224
    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->getdata(Lcom/meizu/smart/wristband/models/database/entity/Other;)Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "callerSet":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 227
    .end local v0    # "callerSet":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "callerSet":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFindPhoneSet()Ljava/lang/String;
    .locals 3

    .prologue
    .line 284
    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Other;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/models/database/entity/Other;-><init>()V

    .line 285
    .local v0, "other":Lcom/meizu/smart/wristband/models/database/entity/Other;
    iget-object v2, p0, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v0, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 286
    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->findphone:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    invoke-virtual {v0, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setType(Lcom/meizu/smart/wristband/models/database/entity/Other$Type;)V

    .line 287
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->getdata(Lcom/meizu/smart/wristband/models/database/entity/Other;)Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, "smartSet":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 290
    .end local v1    # "smartSet":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v1    # "smartSet":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getGoalRemind()Ljava/lang/String;
    .locals 3

    .prologue
    .line 241
    new-instance v1, Lcom/meizu/smart/wristband/models/database/entity/Other;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/database/entity/Other;-><init>()V

    .line 242
    .local v1, "other":Lcom/meizu/smart/wristband/models/database/entity/Other;
    iget-object v2, p0, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 243
    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->aimSwich:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setType(Lcom/meizu/smart/wristband/models/database/entity/Other$Type;)V

    .line 244
    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->getdata(Lcom/meizu/smart/wristband/models/database/entity/Other;)Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "aimSwich":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 247
    .end local v0    # "aimSwich":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "aimSwich":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHandupSet()Ljava/lang/String;
    .locals 3

    .prologue
    .line 170
    new-instance v1, Lcom/meizu/smart/wristband/models/database/entity/Other;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/database/entity/Other;-><init>()V

    .line 171
    .local v1, "other":Lcom/meizu/smart/wristband/models/database/entity/Other;
    iget-object v2, p0, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 172
    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->handsUp:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setType(Lcom/meizu/smart/wristband/models/database/entity/Other$Type;)V

    .line 173
    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->getdata(Lcom/meizu/smart/wristband/models/database/entity/Other;)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "handup":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 176
    .end local v0    # "handup":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "handup":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeartrateMonitorSet()Ljava/lang/String;
    .locals 3

    .prologue
    .line 181
    new-instance v1, Lcom/meizu/smart/wristband/models/database/entity/Other;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/database/entity/Other;-><init>()V

    .line 182
    .local v1, "other":Lcom/meizu/smart/wristband/models/database/entity/Other;
    iget-object v2, p0, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 183
    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->heartrate:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setType(Lcom/meizu/smart/wristband/models/database/entity/Other$Type;)V

    .line 184
    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->getdata(Lcom/meizu/smart/wristband/models/database/entity/Other;)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "heartate":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 187
    .end local v0    # "heartate":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "heartate":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMusicSet()Ljava/lang/String;
    .locals 3

    .prologue
    .line 211
    new-instance v1, Lcom/meizu/smart/wristband/models/database/entity/Other;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/database/entity/Other;-><init>()V

    .line 212
    .local v1, "other":Lcom/meizu/smart/wristband/models/database/entity/Other;
    iget-object v2, p0, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 213
    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->music:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setType(Lcom/meizu/smart/wristband/models/database/entity/Other$Type;)V

    .line 214
    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->getdata(Lcom/meizu/smart/wristband/models/database/entity/Other;)Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "musicSet":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 217
    .end local v0    # "musicSet":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "musicSet":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSedentarySet()Ljava/lang/String;
    .locals 3

    .prologue
    .line 251
    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Other;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/models/database/entity/Other;-><init>()V

    .line 252
    .local v0, "other":Lcom/meizu/smart/wristband/models/database/entity/Other;
    iget-object v2, p0, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v0, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 253
    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->sedentary:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    invoke-virtual {v0, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setType(Lcom/meizu/smart/wristband/models/database/entity/Other$Type;)V

    .line 254
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->getdata(Lcom/meizu/smart/wristband/models/database/entity/Other;)Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, "sedentarySet":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 257
    .end local v1    # "sedentarySet":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v1    # "sedentarySet":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSmartSet()Ljava/lang/String;
    .locals 3

    .prologue
    .line 274
    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Other;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/models/database/entity/Other;-><init>()V

    .line 275
    .local v0, "other":Lcom/meizu/smart/wristband/models/database/entity/Other;
    iget-object v2, p0, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v0, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 276
    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->smart:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    invoke-virtual {v0, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setType(Lcom/meizu/smart/wristband/models/database/entity/Other$Type;)V

    .line 277
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->getdata(Lcom/meizu/smart/wristband/models/database/entity/Other;)Ljava/lang/String;

    move-result-object v1

    .line 278
    .local v1, "smartSet":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 280
    .end local v1    # "smartSet":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v1    # "smartSet":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSmsSet()Ljava/lang/String;
    .locals 3

    .prologue
    .line 231
    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Other;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/models/database/entity/Other;-><init>()V

    .line 232
    .local v0, "other":Lcom/meizu/smart/wristband/models/database/entity/Other;
    iget-object v2, p0, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v0, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 233
    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->sms:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    invoke-virtual {v0, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setType(Lcom/meizu/smart/wristband/models/database/entity/Other$Type;)V

    .line 234
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->getdata(Lcom/meizu/smart/wristband/models/database/entity/Other;)Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, "smsSet":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 237
    .end local v1    # "smsSet":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v1    # "smsSet":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTimeSet()Ljava/lang/String;
    .locals 3

    .prologue
    .line 201
    new-instance v1, Lcom/meizu/smart/wristband/models/database/entity/Other;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/database/entity/Other;-><init>()V

    .line 202
    .local v1, "other":Lcom/meizu/smart/wristband/models/database/entity/Other;
    iget-object v2, p0, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 203
    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->dateDisplay:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setType(Lcom/meizu/smart/wristband/models/database/entity/Other$Type;)V

    .line 204
    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->getdata(Lcom/meizu/smart/wristband/models/database/entity/Other;)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "heartate":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 207
    .end local v0    # "heartate":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "heartate":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getdata(Lcom/meizu/smart/wristband/models/database/entity/Other;)Ljava/lang/String;
    .locals 4
    .param p1, "other"    # Lcom/meizu/smart/wristband/models/database/entity/Other;

    .prologue
    .line 262
    :try_start_0
    iget-object v3, p0, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->otherDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3, p1}, Lcom/j256/ormlite/dao/Dao;->queryForMatching(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 263
    .local v2, "entities":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Other;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 264
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/models/database/entity/Other;

    .line 265
    .local v0, "Oldother":Lcom/meizu/smart/wristband/models/database/entity/Other;
    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/database/entity/Other;->getValue()Ljava/lang/String;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 270
    .end local v0    # "Oldother":Lcom/meizu/smart/wristband/models/database/entity/Other;
    .end local v2    # "entities":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Other;>;"
    :goto_0
    return-object v3

    .line 267
    :catch_0
    move-exception v1

    .line 268
    .local v1, "e":Ljava/sql/SQLException;
    invoke-virtual {v1}, Ljava/sql/SQLException;->printStackTrace()V

    .line 270
    .end local v1    # "e":Ljava/sql/SQLException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getvibirateSet()Ljava/lang/String;
    .locals 3

    .prologue
    .line 191
    new-instance v1, Lcom/meizu/smart/wristband/models/database/entity/Other;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/database/entity/Other;-><init>()V

    .line 192
    .local v1, "other":Lcom/meizu/smart/wristband/models/database/entity/Other;
    iget-object v2, p0, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 193
    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->vibirate:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setType(Lcom/meizu/smart/wristband/models/database/entity/Other$Type;)V

    .line 194
    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->getdata(Lcom/meizu/smart/wristband/models/database/entity/Other;)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "heartate":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 197
    .end local v0    # "heartate":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "heartate":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public storeAimSwich(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "aimSwich"    # Ljava/lang/String;
    .param p2, "sync"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 67
    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Other;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/models/database/entity/Other;-><init>()V

    .line 68
    .local v0, "other":Lcom/meizu/smart/wristband/models/database/entity/Other;
    iget-object v1, p0, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 69
    sget-object v1, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->aimSwich:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setType(Lcom/meizu/smart/wristband/models/database/entity/Other$Type;)V

    .line 70
    invoke-virtual {p0, p1, v0, p2}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->storeData(Ljava/lang/String;Lcom/meizu/smart/wristband/models/database/entity/Other;Z)V

    .line 71
    return-void
.end method

.method public storeAlarm(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "alarm"    # Ljava/lang/String;
    .param p2, "sync"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 32
    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Other;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/models/database/entity/Other;-><init>()V

    .line 33
    .local v0, "other":Lcom/meizu/smart/wristband/models/database/entity/Other;
    iget-object v1, p0, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 34
    sget-object v1, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->alarm:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setType(Lcom/meizu/smart/wristband/models/database/entity/Other$Type;)V

    .line 35
    invoke-virtual {p0, p1, v0, p2}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->storeData(Ljava/lang/String;Lcom/meizu/smart/wristband/models/database/entity/Other;Z)V

    .line 36
    return-void
.end method

.method public storeCaller(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "caller"    # Ljava/lang/String;
    .param p2, "sync"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Other;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/models/database/entity/Other;-><init>()V

    .line 47
    .local v0, "other":Lcom/meizu/smart/wristband/models/database/entity/Other;
    iget-object v1, p0, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 48
    sget-object v1, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->caller:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setType(Lcom/meizu/smart/wristband/models/database/entity/Other$Type;)V

    .line 49
    invoke-virtual {p0, p1, v0, p2}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->storeData(Ljava/lang/String;Lcom/meizu/smart/wristband/models/database/entity/Other;Z)V

    .line 50
    return-void
.end method

.method public storeData(Ljava/lang/String;Lcom/meizu/smart/wristband/models/database/entity/Other;Z)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "other"    # Lcom/meizu/smart/wristband/models/database/entity/Other;
    .param p3, "sync"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 138
    iget-object v2, p0, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->otherDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2, p2}, Lcom/j256/ormlite/dao/Dao;->queryForMatching(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 139
    .local v0, "entities":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Other;>;"
    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 140
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 142
    iget-object v2, p0, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->otherDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/util/Collection;)I

    .line 157
    :cond_1
    :goto_0
    return-void

    .line 146
    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 147
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/smart/wristband/models/database/entity/Other;

    .line 148
    .local v1, "oldOther":Lcom/meizu/smart/wristband/models/database/entity/Other;
    invoke-virtual {v1, p1}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setValue(Ljava/lang/String;)V

    .line 149
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setSync(Ljava/lang/Boolean;)V

    .line 150
    iget-object v2, p0, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->otherDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2, v1}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    goto :goto_0

    .line 152
    .end local v1    # "oldOther":Lcom/meizu/smart/wristband/models/database/entity/Other;
    :cond_3
    invoke-virtual {p2, p1}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setValue(Ljava/lang/String;)V

    .line 153
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setSync(Ljava/lang/Boolean;)V

    .line 154
    iget-object v2, p0, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->otherDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2, p2}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    goto :goto_0
.end method

.method public storeFindphone(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "findphone"    # Ljava/lang/String;
    .param p2, "sync"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 131
    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Other;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/models/database/entity/Other;-><init>()V

    .line 132
    .local v0, "other":Lcom/meizu/smart/wristband/models/database/entity/Other;
    iget-object v1, p0, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 133
    sget-object v1, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->findphone:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setType(Lcom/meizu/smart/wristband/models/database/entity/Other$Type;)V

    .line 134
    invoke-virtual {p0, p1, v0, p2}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->storeData(Ljava/lang/String;Lcom/meizu/smart/wristband/models/database/entity/Other;Z)V

    .line 135
    return-void
.end method

.method public storeHandup(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "handup"    # Ljava/lang/String;
    .param p2, "sync"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 103
    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Other;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/models/database/entity/Other;-><init>()V

    .line 104
    .local v0, "other":Lcom/meizu/smart/wristband/models/database/entity/Other;
    iget-object v1, p0, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 105
    sget-object v1, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->handsUp:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setType(Lcom/meizu/smart/wristband/models/database/entity/Other$Type;)V

    .line 106
    invoke-virtual {p0, p1, v0, p2}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->storeData(Ljava/lang/String;Lcom/meizu/smart/wristband/models/database/entity/Other;Z)V

    .line 107
    return-void
.end method

.method public storeHeartateMonitor(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "heartRate"    # Ljava/lang/String;
    .param p2, "sync"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 110
    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Other;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/models/database/entity/Other;-><init>()V

    .line 111
    .local v0, "other":Lcom/meizu/smart/wristband/models/database/entity/Other;
    iget-object v1, p0, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 112
    sget-object v1, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->heartrate:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setType(Lcom/meizu/smart/wristband/models/database/entity/Other$Type;)V

    .line 113
    invoke-virtual {p0, p1, v0, p2}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->storeData(Ljava/lang/String;Lcom/meizu/smart/wristband/models/database/entity/Other;Z)V

    .line 114
    return-void
.end method

.method public storeMusic(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "music"    # Ljava/lang/String;
    .param p2, "sync"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Other;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/models/database/entity/Other;-><init>()V

    .line 40
    .local v0, "other":Lcom/meizu/smart/wristband/models/database/entity/Other;
    iget-object v1, p0, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 41
    sget-object v1, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->music:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setType(Lcom/meizu/smart/wristband/models/database/entity/Other$Type;)V

    .line 42
    invoke-virtual {p0, p1, v0, p2}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->storeData(Ljava/lang/String;Lcom/meizu/smart/wristband/models/database/entity/Other;Z)V

    .line 43
    return-void
.end method

.method public storeSedentary(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "sedentary"    # Ljava/lang/String;
    .param p2, "sync"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Other;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/models/database/entity/Other;-><init>()V

    .line 61
    .local v0, "other":Lcom/meizu/smart/wristband/models/database/entity/Other;
    iget-object v1, p0, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 62
    sget-object v1, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->sedentary:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setType(Lcom/meizu/smart/wristband/models/database/entity/Other$Type;)V

    .line 63
    invoke-virtual {p0, p1, v0, p2}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->storeData(Ljava/lang/String;Lcom/meizu/smart/wristband/models/database/entity/Other;Z)V

    .line 64
    return-void
.end method

.method public storeSleep(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "SlpTime"    # Ljava/lang/String;
    .param p2, "sync"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 96
    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Other;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/models/database/entity/Other;-><init>()V

    .line 97
    .local v0, "other":Lcom/meizu/smart/wristband/models/database/entity/Other;
    iget-object v1, p0, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 98
    sget-object v1, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->SlpTime:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setType(Lcom/meizu/smart/wristband/models/database/entity/Other$Type;)V

    .line 99
    invoke-virtual {p0, p1, v0, p2}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->storeData(Ljava/lang/String;Lcom/meizu/smart/wristband/models/database/entity/Other;Z)V

    .line 100
    return-void
.end method

.method public storeSmart(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "unit_weight"    # Ljava/lang/String;
    .param p2, "sync"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Other;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/models/database/entity/Other;-><init>()V

    .line 82
    .local v0, "other":Lcom/meizu/smart/wristband/models/database/entity/Other;
    iget-object v1, p0, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 83
    sget-object v1, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->smart:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setType(Lcom/meizu/smart/wristband/models/database/entity/Other$Type;)V

    .line 84
    invoke-virtual {p0, p1, v0, p2}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->storeData(Ljava/lang/String;Lcom/meizu/smart/wristband/models/database/entity/Other;Z)V

    .line 85
    return-void
.end method

.method public storeSms(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "caller"    # Ljava/lang/String;
    .param p2, "sync"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 53
    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Other;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/models/database/entity/Other;-><init>()V

    .line 54
    .local v0, "other":Lcom/meizu/smart/wristband/models/database/entity/Other;
    iget-object v1, p0, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 55
    sget-object v1, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->sms:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setType(Lcom/meizu/smart/wristband/models/database/entity/Other$Type;)V

    .line 56
    invoke-virtual {p0, p1, v0, p2}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->storeData(Ljava/lang/String;Lcom/meizu/smart/wristband/models/database/entity/Other;Z)V

    .line 57
    return-void
.end method

.method public storeTimeDispay(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "time"    # Ljava/lang/String;
    .param p2, "sync"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 117
    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Other;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/models/database/entity/Other;-><init>()V

    .line 118
    .local v0, "other":Lcom/meizu/smart/wristband/models/database/entity/Other;
    iget-object v1, p0, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 119
    sget-object v1, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->dateDisplay:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setType(Lcom/meizu/smart/wristband/models/database/entity/Other$Type;)V

    .line 120
    invoke-virtual {p0, p1, v0, p2}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->storeData(Ljava/lang/String;Lcom/meizu/smart/wristband/models/database/entity/Other;Z)V

    .line 121
    return-void
.end method

.method public storeUnitLength(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "unit_length"    # Ljava/lang/String;
    .param p2, "sync"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 74
    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Other;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/models/database/entity/Other;-><init>()V

    .line 75
    .local v0, "other":Lcom/meizu/smart/wristband/models/database/entity/Other;
    iget-object v1, p0, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 76
    sget-object v1, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->unit_length:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setType(Lcom/meizu/smart/wristband/models/database/entity/Other$Type;)V

    .line 77
    invoke-virtual {p0, p1, v0, p2}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->storeData(Ljava/lang/String;Lcom/meizu/smart/wristband/models/database/entity/Other;Z)V

    .line 78
    return-void
.end method

.method public storeUnitWeight(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "unit_weight"    # Ljava/lang/String;
    .param p2, "sync"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Other;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/models/database/entity/Other;-><init>()V

    .line 89
    .local v0, "other":Lcom/meizu/smart/wristband/models/database/entity/Other;
    iget-object v1, p0, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 90
    sget-object v1, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->unit_weight:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setType(Lcom/meizu/smart/wristband/models/database/entity/Other$Type;)V

    .line 91
    invoke-virtual {p0, p1, v0, p2}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->storeData(Ljava/lang/String;Lcom/meizu/smart/wristband/models/database/entity/Other;Z)V

    .line 92
    return-void
.end method

.method public storeVibrate(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "heartRate"    # Ljava/lang/String;
    .param p2, "sync"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 124
    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Other;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/models/database/entity/Other;-><init>()V

    .line 125
    .local v0, "other":Lcom/meizu/smart/wristband/models/database/entity/Other;
    iget-object v1, p0, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 126
    sget-object v1, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->vibirate:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setType(Lcom/meizu/smart/wristband/models/database/entity/Other$Type;)V

    .line 127
    invoke-virtual {p0, p1, v0, p2}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->storeData(Ljava/lang/String;Lcom/meizu/smart/wristband/models/database/entity/Other;Z)V

    .line 128
    return-void
.end method
