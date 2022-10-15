.class public Lcom/meizu/smart/wristband/servers/DBSportApi;
.super Ljava/lang/Object;
.source "DBSportApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    return-void
.end method

.method public static getAllRunSport(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/SportReal;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    :try_start_0
    new-instance v1, Lcom/meizu/smart/wristband/models/database/servers/SportServer;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/models/database/servers/SportServer;-><init>(Landroid/content/Context;)V

    .line 212
    .local v1, "server":Lcom/meizu/smart/wristband/models/database/servers/SportServer;
    new-instance v2, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->getLoginUser()Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->getAllSportReal(Lcom/meizu/smart/wristband/models/database/entity/User;)Ljava/util/List;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 217
    .end local v1    # "server":Lcom/meizu/smart/wristband/models/database/servers/SportServer;
    :goto_0
    return-object v2

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 217
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getBestSportByDay(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "start"    # Ljava/util/Date;
    .param p2, "end"    # Ljava/util/Date;

    .prologue
    .line 173
    invoke-static {p0, p1, p2}, Lcom/meizu/smart/wristband/servers/DBSportApi;->statSportByDay(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;

    move-result-object v0

    .line 174
    .local v0, "days":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 175
    :cond_0
    const/4 v1, 0x0

    .line 184
    :goto_0
    return-object v1

    .line 177
    :cond_1
    new-instance v1, Lcom/meizu/smart/wristband/servers/DBSportApi$1;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/servers/DBSportApi$1;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 184
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;

    goto :goto_0
.end method

.method public static getCalorie(DF)F
    .locals 8
    .param p0, "weight"    # D
    .param p2, "dis"    # F

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, "cal":F
    const-wide v2, 0x4001ae147ae147aeL    # 2.21

    mul-double/2addr v2, p0

    const-wide v4, 0x3fe6a7ef9db22d0eL    # 0.708

    mul-double/2addr v2, v4

    float-to-double v4, p2

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    mul-double/2addr v2, v4

    double-to-float v0, v2

    .line 97
    return v0
.end method

.method public static getCalorieTipByCal(Landroid/content/Context;F)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "calorie"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 101
    float-to-int v1, p1

    .line 102
    .local v1, "nCalorie":I
    const-string v0, ""

    .line 103
    .local v0, "calorie_tip":Ljava/lang/String;
    const/16 v2, 0xd

    if-ge v1, v2, :cond_0

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801b7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 117
    :goto_0
    return-object v0

    .line 105
    :cond_0
    const/16 v2, 0x64

    if-ge v1, v2, :cond_1

    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801b8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    int-to-double v4, v1

    const-wide/high16 v6, 0x402c000000000000L    # 14.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 107
    :cond_1
    const/16 v2, 0x12c

    if-ge v1, v2, :cond_2

    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801b9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    int-to-double v4, v1

    const-wide v6, 0x4054400000000000L    # 81.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 109
    :cond_2
    const/16 v2, 0x2bc

    if-ge v1, v2, :cond_3

    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801ba

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    int-to-double v4, v1

    const-wide/high16 v6, 0x406d000000000000L    # 232.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 111
    :cond_3
    const/16 v2, 0x5dc

    if-ge v1, v2, :cond_4

    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    int-to-double v4, v1

    const-wide v6, 0x4082500000000000L    # 586.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 114
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801bc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    int-to-double v4, v1

    const-wide/high16 v6, 0x4022000000000000L    # 9.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static getDistanceByStep(JI)F
    .locals 6
    .param p0, "step"    # J
    .param p2, "height"    # I

    .prologue
    .line 34
    const/4 v0, 0x0

    .line 35
    .local v0, "dis":F
    int-to-double v2, p2

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    long-to-double v4, p0

    mul-double/2addr v2, v4

    double-to-float v0, v2

    .line 36
    return v0
.end method

.method public static getDistanceTipByDis(Landroid/content/Context;F)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "meter"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 41
    float-to-int v1, p1

    .line 42
    .local v1, "nMeter":I
    const-string v0, ""

    .line 43
    .local v0, "distancet_tip":Ljava/lang/String;
    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_0

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 87
    :goto_0
    return-object v0

    .line 45
    :cond_0
    const/16 v2, 0x578

    if-ge v1, v2, :cond_1

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801cb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    int-to-double v4, v1

    const-wide v6, 0x4094280000000000L    # 1290.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 47
    :cond_1
    const/16 v2, 0x5e6

    if-ge v1, v2, :cond_2

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801ce

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    int-to-double v4, v1

    const-wide v6, 0x4097500000000000L    # 1492.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 49
    :cond_2
    const/16 v2, 0x76c

    if-ge v1, v2, :cond_3

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801cf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    int-to-double v4, v1

    const-wide v6, 0x4097d00000000000L    # 1524.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 51
    :cond_3
    const/16 v2, 0x834

    if-ge v1, v2, :cond_4

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801d0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    int-to-double v4, v1

    const-wide v6, 0x409f800000000000L    # 2016.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 53
    :cond_4
    const/16 v2, 0x898

    if-ge v1, v2, :cond_5

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801d1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    int-to-double v4, v1

    const-wide v6, 0x40a0d60000000000L    # 2155.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 55
    :cond_5
    const/16 v2, 0xb54

    if-ge v1, v2, :cond_6

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801d2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    int-to-double v4, v1

    const-wide v6, 0x40a1760000000000L    # 2235.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 57
    :cond_6
    const/16 v2, 0xce4

    if-ge v1, v2, :cond_7

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801d3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    int-to-double v4, v1

    const-wide v6, 0x40a7e40000000000L    # 3058.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 59
    :cond_7
    const/16 v2, 0xe10

    if-ge v1, v2, :cond_8

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801d4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    int-to-double v4, v1

    const-wide v6, 0x40aab80000000000L    # 3420.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 61
    :cond_8
    const/16 v2, 0x1130

    if-ge v1, v2, :cond_9

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801c1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    int-to-double v4, v1

    const-wide v6, 0x40ad800000000000L    # 3776.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 63
    :cond_9
    const/16 v2, 0x157c

    if-ge v1, v2, :cond_a

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801c2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    int-to-double v4, v1

    const-wide v6, 0x40b3880000000000L    # 5000.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 65
    :cond_a
    const/16 v2, 0x2328

    if-ge v1, v2, :cond_b

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    int-to-double v4, v1

    const-wide v6, 0x40c1460000000000L    # 8844.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 67
    :cond_b
    const/16 v2, 0x2ee0

    if-ge v1, v2, :cond_c

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801c4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    int-to-double v4, v1

    const-wide v6, 0x40c3880000000000L    # 10000.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 69
    :cond_c
    const/16 v2, 0x4268

    if-ge v1, v2, :cond_d

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801c5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    int-to-double v4, v1

    const-wide v6, 0x40d0428000000000L    # 16650.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 71
    :cond_d
    const/16 v2, 0x4e20

    if-ge v1, v2, :cond_e

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801c6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    int-to-double v4, v1

    const-wide v6, 0x40d1940000000000L    # 18000.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 73
    :cond_e
    const/16 v2, 0x59d8

    if-ge v1, v2, :cond_f

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801c7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    int-to-double v4, v1

    const-wide v6, 0x40d49a4000000000L    # 21097.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 75
    :cond_f
    const/16 v2, 0x6590

    if-ge v1, v2, :cond_10

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801c8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    int-to-double v4, v1

    const-wide v6, 0x40d68f0000000000L    # 23100.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 77
    :cond_10
    const/16 v2, 0x7530

    if-ge v1, v2, :cond_11

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801c9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    int-to-double v4, v1

    const-wide v6, 0x40db710000000000L    # 28100.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 79
    :cond_11
    const v2, 0x84d0

    if-ge v1, v2, :cond_12

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801ca

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    int-to-double v4, v1

    const-wide v6, 0x40dfef0000000000L    # 32700.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 81
    :cond_12
    const v2, 0x9470

    if-ge v1, v2, :cond_13

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801cc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    int-to-double v4, v1

    const-wide v6, 0x40e2048000000000L    # 36900.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 84
    :cond_13
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801cd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    int-to-double v4, v1

    const-wide v6, 0x4119b39c00000000L    # 421095.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static getPace(DI)D
    .locals 4
    .param p0, "minute"    # D
    .param p2, "distance"    # I

    .prologue
    .line 121
    if-nez p2, :cond_0

    .line 122
    const-wide/16 v0, 0x0

    .line 124
    :goto_0
    return-wide v0

    :cond_0
    int-to-double v0, p2

    div-double v0, p0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    goto :goto_0
.end method

.method public static getRunSport(Landroid/content/Context;Ljava/lang/Integer;)Lcom/meizu/smart/wristband/models/database/entity/SportReal;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/Integer;

    .prologue
    .line 222
    :try_start_0
    new-instance v1, Lcom/meizu/smart/wristband/models/database/servers/SportServer;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/models/database/servers/SportServer;-><init>(Landroid/content/Context;)V

    .line 223
    .local v1, "server":Lcom/meizu/smart/wristband/models/database/servers/SportServer;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->getSportReal(I)Lcom/meizu/smart/wristband/models/database/entity/SportReal;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 228
    .end local v1    # "server":Lcom/meizu/smart/wristband/models/database/servers/SportServer;
    :goto_0
    return-object v2

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 228
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getRunSport(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "start"    # Ljava/util/Date;
    .param p2, "end"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/SportReal;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    :try_start_0
    new-instance v1, Lcom/meizu/smart/wristband/models/database/servers/SportServer;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/models/database/servers/SportServer;-><init>(Landroid/content/Context;)V

    .line 201
    .local v1, "server":Lcom/meizu/smart/wristband/models/database/servers/SportServer;
    new-instance v2, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->getLoginUser()Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->getSportReal(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 206
    .end local v1    # "server":Lcom/meizu/smart/wristband/models/database/servers/SportServer;
    :goto_0
    return-object v2

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 206
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getSportList(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "start"    # Ljava/util/Date;
    .param p2, "end"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/Sport;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    :try_start_0
    new-instance v1, Lcom/meizu/smart/wristband/models/database/servers/SportServer;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/models/database/servers/SportServer;-><init>(Landroid/content/Context;)V

    .line 190
    .local v1, "sportServer":Lcom/meizu/smart/wristband/models/database/servers/SportServer;
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getLoginUser(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->getSportByTime(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 194
    .end local v1    # "sportServer":Lcom/meizu/smart/wristband/models/database/servers/SportServer;
    :goto_0
    return-object v2

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 194
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getStepOfDay(Landroid/content/Context;Ljava/util/Date;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 321
    :try_start_0
    new-instance v3, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;

    invoke-direct {v3, p0}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->getLoginUser()Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v2

    .line 322
    .local v2, "user":Lcom/meizu/smart/wristband/models/database/entity/User;
    new-instance v1, Lcom/meizu/smart/wristband/models/database/servers/SportServer;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/models/database/servers/SportServer;-><init>(Landroid/content/Context;)V

    .line 323
    .local v1, "sportServer":Lcom/meizu/smart/wristband/models/database/servers/SportServer;
    invoke-virtual {v1, v2, p1}, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->getAllStepOfDay(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 328
    .end local v1    # "sportServer":Lcom/meizu/smart/wristband/models/database/servers/SportServer;
    .end local v2    # "user":Lcom/meizu/smart/wristband/models/database/entity/User;
    :goto_0
    return v3

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 328
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getTodayStep(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 164
    :try_start_0
    new-instance v1, Lcom/meizu/smart/wristband/models/database/servers/SportServer;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/models/database/servers/SportServer;-><init>(Landroid/content/Context;)V

    .line 165
    .local v1, "sportServer":Lcom/meizu/smart/wristband/models/database/servers/SportServer;
    invoke-virtual {v1, p0}, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->getPace(Landroid/content/Context;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 169
    .end local v1    # "sportServer":Lcom/meizu/smart/wristband/models/database/servers/SportServer;
    :goto_0
    return-object v2

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 169
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0
.end method

.method public static savePace(Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "integer"    # Ljava/lang/Integer;

    .prologue
    .line 147
    :try_start_0
    new-instance v1, Lcom/meizu/smart/wristband/models/database/servers/SportServer;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/models/database/servers/SportServer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p0, p1}, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->savePace(Landroid/content/Context;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0
.end method

.method public static sliptSport(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/Sport;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    .local p1, "sportList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Sport;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_2

    :cond_0
    const/4 v8, 0x0

    .line 316
    :cond_1
    :goto_0
    return-object v8

    .line 239
    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v8, "sportItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;>;"
    const/4 v7, 0x0

    .line 242
    .local v7, "sportItem":Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;
    const/4 v9, 0x0

    .line 244
    .local v9, "user":Lcom/meizu/smart/wristband/models/database/entity/User;
    :try_start_0
    new-instance v10, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;

    invoke-direct {v10, p0}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->getLoginUser()Lcom/meizu/smart/wristband/models/database/entity/User;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 249
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    .line 250
    new-instance v7, Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;

    .end local v7    # "sportItem":Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;
    invoke-direct {v7}, Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;-><init>()V

    .line 251
    .restart local v7    # "sportItem":Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;
    const/4 v10, 0x0

    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/meizu/smart/wristband/models/database/entity/Sport;

    invoke-virtual {v10}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getStartTime()Ljava/util/Date;

    move-result-object v10

    iput-object v10, v7, Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;->startTime:Ljava/util/Date;

    .line 252
    const/4 v10, 0x0

    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/meizu/smart/wristband/models/database/entity/Sport;

    invoke-virtual {v10}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getEndTime()Ljava/util/Date;

    move-result-object v10

    iput-object v10, v7, Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;->endTime:Ljava/util/Date;

    .line 253
    iget v11, v7, Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;->duration:I

    const/4 v10, 0x0

    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/meizu/smart/wristband/models/database/entity/Sport;

    invoke-virtual {v10}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getTime()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/2addr v10, v11

    iput v10, v7, Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;->duration:I

    .line 254
    iget v11, v7, Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;->step:I

    const/4 v10, 0x0

    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/meizu/smart/wristband/models/database/entity/Sport;

    invoke-virtual {v10}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getStepCount()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/2addr v10, v11

    iput v10, v7, Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;->step:I

    .line 255
    iget v10, v7, Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;->distance:F

    const/4 v11, 0x0

    add-float/2addr v10, v11

    iput v10, v7, Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;->distance:F

    .line 256
    iget v10, v7, Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;->calorie:F

    const/4 v11, 0x0

    add-float/2addr v10, v11

    iput v10, v7, Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;->calorie:F

    .line 259
    iget v10, v7, Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;->step:I

    const/16 v11, 0x64

    if-le v10, v11, :cond_1

    .line 260
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_1

    .line 266
    .end local v0    # "e":Ljava/sql/SQLException;
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v1, v10, :cond_a

    .line 269
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ne v1, v10, :cond_7

    .line 271
    new-instance v7, Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;

    .end local v7    # "sportItem":Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;
    invoke-direct {v7}, Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;-><init>()V

    .line 272
    .restart local v7    # "sportItem":Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/meizu/smart/wristband/models/database/entity/Sport;

    invoke-virtual {v10}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getStartTime()Ljava/util/Date;

    move-result-object v10

    iput-object v10, v7, Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;->startTime:Ljava/util/Date;

    .line 273
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/meizu/smart/wristband/models/database/entity/Sport;

    invoke-virtual {v10}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getEndTime()Ljava/util/Date;

    move-result-object v10

    iput-object v10, v7, Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;->endTime:Ljava/util/Date;

    .line 274
    :goto_3
    if-gt v6, v1, :cond_5

    .line 275
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/smart/wristband/models/database/entity/Sport;

    .line 276
    .local v5, "item3":Lcom/meizu/smart/wristband/models/database/entity/Sport;
    iget v10, v7, Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;->step:I

    invoke-virtual {v5}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getStepCount()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/2addr v10, v11

    iput v10, v7, Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;->step:I

    .line 277
    iget v11, v7, Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;->duration:I

    invoke-virtual {v5}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getTime()Ljava/lang/Integer;

    move-result-object v10

    if-nez v10, :cond_4

    const/4 v10, 0x5

    :goto_4
    add-int/2addr v10, v11

    iput v10, v7, Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;->duration:I

    .line 278
    iget v10, v7, Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;->distance:F

    const/4 v11, 0x0

    add-float/2addr v10, v11

    iput v10, v7, Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;->distance:F

    .line 279
    iget v10, v7, Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;->calorie:F

    const/4 v11, 0x0

    add-float/2addr v10, v11

    iput v10, v7, Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;->calorie:F

    .line 274
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 277
    :cond_4
    invoke-virtual {v5}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getTime()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_4

    .line 282
    .end local v5    # "item3":Lcom/meizu/smart/wristband/models/database/entity/Sport;
    :cond_5
    iget v10, v7, Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;->step:I

    const/16 v11, 0x64

    if-le v10, v11, :cond_6

    .line 283
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    :cond_6
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 286
    :cond_7
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/smart/wristband/models/database/entity/Sport;

    .line 287
    .local v3, "item1":Lcom/meizu/smart/wristband/models/database/entity/Sport;
    add-int/lit8 v10, v1, 0x1

    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/smart/wristband/models/database/entity/Sport;

    .line 290
    .local v4, "item2":Lcom/meizu/smart/wristband/models/database/entity/Sport;
    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getStartTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getEndTime()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    sub-long/2addr v10, v12

    const-wide/32 v12, 0x927c0

    cmp-long v10, v10, v12

    if-lez v10, :cond_6

    .line 291
    new-instance v7, Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;

    .end local v7    # "sportItem":Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;
    invoke-direct {v7}, Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;-><init>()V

    .line 292
    .restart local v7    # "sportItem":Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/meizu/smart/wristband/models/database/entity/Sport;

    invoke-virtual {v10}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getEndTime()Ljava/util/Date;

    move-result-object v10

    iput-object v10, v7, Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;->endTime:Ljava/util/Date;

    .line 293
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/meizu/smart/wristband/models/database/entity/Sport;

    invoke-virtual {v10}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getStartTime()Ljava/util/Date;

    move-result-object v10

    iput-object v10, v7, Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;->startTime:Ljava/util/Date;

    .line 294
    :goto_6
    if-gt v6, v1, :cond_9

    .line 295
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/smart/wristband/models/database/entity/Sport;

    .line 296
    .restart local v5    # "item3":Lcom/meizu/smart/wristband/models/database/entity/Sport;
    iget v11, v7, Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;->duration:I

    invoke-virtual {v5}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getTime()Ljava/lang/Integer;

    move-result-object v10

    if-nez v10, :cond_8

    const/4 v10, 0x5

    :goto_7
    add-int/2addr v10, v11

    iput v10, v7, Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;->duration:I

    .line 297
    iget v10, v7, Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;->step:I

    invoke-virtual {v5}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getStepCount()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/2addr v10, v11

    iput v10, v7, Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;->step:I

    .line 298
    iget v10, v7, Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;->distance:F

    const/4 v11, 0x0

    add-float/2addr v10, v11

    iput v10, v7, Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;->distance:F

    .line 299
    iget v10, v7, Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;->calorie:F

    const/4 v11, 0x0

    add-float/2addr v10, v11

    iput v10, v7, Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;->calorie:F

    .line 294
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 296
    :cond_8
    invoke-virtual {v5}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getTime()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_7

    .line 302
    .end local v5    # "item3":Lcom/meizu/smart/wristband/models/database/entity/Sport;
    :cond_9
    iget v10, v7, Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;->step:I

    const/16 v11, 0x64

    if-le v10, v11, :cond_6

    .line 303
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 309
    .end local v3    # "item1":Lcom/meizu/smart/wristband/models/database/entity/Sport;
    .end local v4    # "item2":Lcom/meizu/smart/wristband/models/database/entity/Sport;
    :cond_a
    const/4 v1, 0x0

    :goto_8
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v1, v10, :cond_1

    .line 310
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;

    .line 311
    .local v2, "item":Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;
    iget v10, v2, Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;->duration:I

    const/16 v11, 0x3c

    if-ge v10, v11, :cond_b

    const/16 v10, 0x3c

    iput v10, v2, Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;->duration:I

    .line 312
    :cond_b
    iget v10, v2, Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;->step:I

    int-to-long v10, v10

    invoke-virtual {v9}, Lcom/meizu/smart/wristband/models/database/entity/User;->getHeight()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v10, v11, v12}, Lcom/meizu/smart/wristband/servers/DBSportApi;->getDistanceByStep(JI)F

    move-result v10

    iput v10, v2, Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;->distance:F

    .line 313
    invoke-virtual {v9}, Lcom/meizu/smart/wristband/models/database/entity/User;->getWeight()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-double v10, v10

    iget v12, v2, Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;->distance:F

    invoke-static {v10, v11, v12}, Lcom/meizu/smart/wristband/servers/DBSportApi;->getCalorie(DF)F

    move-result v10

    iput v10, v2, Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;->calorie:F

    .line 309
    add-int/lit8 v1, v1, 0x1

    goto :goto_8
.end method

.method public static statCalorie(Ljava/util/List;)F
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/Sport;",
            ">;)F"
        }
    .end annotation

    .prologue
    .line 140
    .local p0, "sports":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Sport;>;"
    const/4 v1, 0x0

    .line 141
    .local v1, "sum":F
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/models/database/entity/Sport;

    .local v0, "item":Lcom/meizu/smart/wristband/models/database/entity/Sport;
    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getCalorie()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v1, v3

    goto :goto_0

    .line 142
    .end local v0    # "item":Lcom/meizu/smart/wristband/models/database/entity/Sport;
    :cond_0
    return v1
.end method

.method public static statDistance(Ljava/util/List;)F
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/Sport;",
            ">;)F"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, "sports":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Sport;>;"
    const/4 v1, 0x0

    .line 135
    .local v1, "sum":F
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/models/database/entity/Sport;

    .local v0, "item":Lcom/meizu/smart/wristband/models/database/entity/Sport;
    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getDistance()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    goto :goto_0

    .line 136
    .end local v0    # "item":Lcom/meizu/smart/wristband/models/database/entity/Sport;
    :cond_0
    return v1
.end method

.method public static statSportByDay(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time1"    # Ljava/util/Date;
    .param p2, "time2"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;",
            ">;"
        }
    .end annotation

    .prologue
    .line 406
    const/4 v2, 0x0

    .line 408
    .local v2, "sportPointList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;>;"
    if-nez p1, :cond_0

    .line 409
    :try_start_0
    new-instance v4, Ljava/util/Date;

    const-wide/16 v8, 0x0

    invoke-direct {v4, v8, v9}, Ljava/util/Date;-><init>(J)V

    .end local p1    # "time1":Ljava/util/Date;
    .local v4, "time1":Ljava/util/Date;
    move-object p1, v4

    .line 411
    .end local v4    # "time1":Ljava/util/Date;
    .restart local p1    # "time1":Ljava/util/Date;
    :cond_0
    if-nez p2, :cond_1

    .line 412
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .end local p2    # "time2":Ljava/util/Date;
    .local v5, "time2":Ljava/util/Date;
    move-object p2, v5

    .line 414
    .end local v5    # "time2":Ljava/util/Date;
    .restart local p2    # "time2":Ljava/util/Date;
    :cond_1
    new-instance v3, Lcom/meizu/smart/wristband/models/database/servers/SportServer;

    invoke-direct {v3, p0}, Lcom/meizu/smart/wristband/models/database/servers/SportServer;-><init>(Landroid/content/Context;)V

    .line 415
    .local v3, "sportServer":Lcom/meizu/smart/wristband/models/database/servers/SportServer;
    new-instance v7, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;

    invoke-direct {v7, p0}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;-><init>(Landroid/content/Context;)V

    .line 416
    .local v7, "userInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    invoke-virtual {v7}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->getLoginUser()Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v8

    invoke-virtual {v3, v8, p1, p2}, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->getSportStatListByDay(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;

    move-result-object v2

    .line 417
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "statSportByDay sportList.size() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 419
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 420
    new-instance v8, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;

    invoke-direct {v8, p0}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->getLoginUser()Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v6

    .line 422
    .local v6, "user":Lcom/meizu/smart/wristband/models/database/entity/User;
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_2

    .line 423
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;

    iget-object v8, v8, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->startTime:Ljava/util/Date;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->isSameDay(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 424
    new-instance v1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;-><init>()V

    .line 425
    .local v1, "sp":Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    iput-object v8, v1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->startTime:Ljava/util/Date;

    .line 426
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    .end local v1    # "sp":Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;
    .end local v3    # "sportServer":Lcom/meizu/smart/wristband/models/database/servers/SportServer;
    .end local v6    # "user":Lcom/meizu/smart/wristband/models/database/entity/User;
    .end local v7    # "userInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    :cond_2
    :goto_0
    return-object v2

    .line 430
    :catch_0
    move-exception v0

    .line 431
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0
.end method

.method public static statSportByHour(Landroid/content/Context;Ljava/util/Date;)Ljava/util/List;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;",
            ">;"
        }
    .end annotation

    .prologue
    .line 333
    const/4 v2, 0x0

    .line 335
    .local v2, "sportPointList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;>;"
    :try_start_0
    new-instance v5, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;

    invoke-direct {v5, p0}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->getLoginUser()Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v4

    .line 336
    .local v4, "user":Lcom/meizu/smart/wristband/models/database/entity/User;
    new-instance v3, Lcom/meizu/smart/wristband/models/database/servers/SportServer;

    invoke-direct {v3, p0}, Lcom/meizu/smart/wristband/models/database/servers/SportServer;-><init>(Landroid/content/Context;)V

    .line 337
    .local v3, "sportServer":Lcom/meizu/smart/wristband/models/database/servers/SportServer;
    const/4 v1, 0x0

    .line 338
    .local v1, "sportList":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    invoke-virtual {v3, v4, p1}, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->getStatSportListByHour(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;)Ljava/util/List;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 343
    .end local v1    # "sportList":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    .end local v3    # "sportServer":Lcom/meizu/smart/wristband/models/database/servers/SportServer;
    .end local v4    # "user":Lcom/meizu/smart/wristband/models/database/entity/User;
    :goto_0
    return-object v2

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0
.end method

.method public static statSportByMonth(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time1"    # Ljava/util/Date;
    .param p2, "time2"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;",
            ">;"
        }
    .end annotation

    .prologue
    .line 348
    const/4 v2, 0x0

    .line 351
    .local v2, "sportPointList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;>;"
    if-nez p1, :cond_0

    .line 352
    :try_start_0
    new-instance v4, Ljava/util/Date;

    const-wide/16 v8, 0x0

    invoke-direct {v4, v8, v9}, Ljava/util/Date;-><init>(J)V

    .end local p1    # "time1":Ljava/util/Date;
    .local v4, "time1":Ljava/util/Date;
    move-object p1, v4

    .line 354
    .end local v4    # "time1":Ljava/util/Date;
    .restart local p1    # "time1":Ljava/util/Date;
    :cond_0
    if-nez p2, :cond_1

    .line 355
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .end local p2    # "time2":Ljava/util/Date;
    .local v5, "time2":Ljava/util/Date;
    move-object p2, v5

    .line 357
    .end local v5    # "time2":Ljava/util/Date;
    .restart local p2    # "time2":Ljava/util/Date;
    :cond_1
    new-instance v3, Lcom/meizu/smart/wristband/models/database/servers/SportServer;

    invoke-direct {v3, p0}, Lcom/meizu/smart/wristband/models/database/servers/SportServer;-><init>(Landroid/content/Context;)V

    .line 358
    .local v3, "sportServer":Lcom/meizu/smart/wristband/models/database/servers/SportServer;
    new-instance v6, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;

    invoke-direct {v6, p0}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;-><init>(Landroid/content/Context;)V

    .line 359
    .local v6, "userInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    invoke-virtual {v6}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->getLoginUser()Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v7

    invoke-virtual {v3, v7, p1, p2}, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->getStatSportListByMonth(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;

    move-result-object v2

    .line 360
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_3

    .line 361
    :cond_2
    const/4 v7, 0x0

    .line 372
    .end local v3    # "sportServer":Lcom/meizu/smart/wristband/models/database/servers/SportServer;
    .end local v6    # "userInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    :goto_0
    return-object v7

    .line 363
    .restart local v3    # "sportServer":Lcom/meizu/smart/wristband/models/database/servers/SportServer;
    .restart local v6    # "userInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;

    iget-object v7, v7, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->startTime:Ljava/util/Date;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->isSameMonth(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 364
    new-instance v1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;-><init>()V

    .line 365
    .local v1, "sp":Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    iput-object v7, v1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->startTime:Ljava/util/Date;

    .line 366
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "sp":Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;
    .end local v3    # "sportServer":Lcom/meizu/smart/wristband/models/database/servers/SportServer;
    .end local v6    # "userInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    :cond_4
    :goto_1
    move-object v7, v2

    .line 372
    goto :goto_0

    .line 368
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_1
.end method

.method public static statSportByWeek(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time1"    # Ljava/util/Date;
    .param p2, "time2"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;",
            ">;"
        }
    .end annotation

    .prologue
    .line 377
    const/4 v2, 0x0

    .line 379
    .local v2, "sportPointList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;>;"
    if-nez p1, :cond_0

    .line 380
    :try_start_0
    new-instance v4, Ljava/util/Date;

    const-wide/16 v8, 0x0

    invoke-direct {v4, v8, v9}, Ljava/util/Date;-><init>(J)V

    .end local p1    # "time1":Ljava/util/Date;
    .local v4, "time1":Ljava/util/Date;
    move-object p1, v4

    .line 382
    .end local v4    # "time1":Ljava/util/Date;
    .restart local p1    # "time1":Ljava/util/Date;
    :cond_0
    if-nez p2, :cond_1

    .line 383
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .end local p2    # "time2":Ljava/util/Date;
    .local v5, "time2":Ljava/util/Date;
    move-object p2, v5

    .line 385
    .end local v5    # "time2":Ljava/util/Date;
    .restart local p2    # "time2":Ljava/util/Date;
    :cond_1
    new-instance v3, Lcom/meizu/smart/wristband/models/database/servers/SportServer;

    invoke-direct {v3, p0}, Lcom/meizu/smart/wristband/models/database/servers/SportServer;-><init>(Landroid/content/Context;)V

    .line 386
    .local v3, "sportServer":Lcom/meizu/smart/wristband/models/database/servers/SportServer;
    new-instance v6, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;

    invoke-direct {v6, p0}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;-><init>(Landroid/content/Context;)V

    .line 387
    .local v6, "userInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    invoke-virtual {v6}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->getLoginUser()Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v7

    invoke-virtual {v3, v7, p1, p2}, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->getStatSportListByWeek(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;

    move-result-object v2

    .line 389
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_3

    .line 390
    :cond_2
    const/4 v7, 0x0

    .line 402
    .end local v3    # "sportServer":Lcom/meizu/smart/wristband/models/database/servers/SportServer;
    .end local v6    # "userInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    :goto_0
    return-object v7

    .line 392
    .restart local v3    # "sportServer":Lcom/meizu/smart/wristband/models/database/servers/SportServer;
    .restart local v6    # "userInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;

    iget-object v7, v7, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->startTime:Ljava/util/Date;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->isSameWeek(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 393
    new-instance v1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;-><init>()V

    .line 394
    .local v1, "sp":Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    iput-object v7, v1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->startTime:Ljava/util/Date;

    .line 395
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "sp":Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;
    .end local v3    # "sportServer":Lcom/meizu/smart/wristband/models/database/servers/SportServer;
    .end local v6    # "userInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    :cond_4
    :goto_1
    move-object v7, v2

    .line 402
    goto :goto_0

    .line 398
    :catch_0
    move-exception v0

    .line 399
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_1
.end method

.method public static statStep(Ljava/util/List;)Ljava/lang/Integer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/Sport;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "sports":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Sport;>;"
    const/4 v1, 0x0

    .line 129
    .local v1, "sum":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/models/database/entity/Sport;

    .local v0, "item":Lcom/meizu/smart/wristband/models/database/entity/Sport;
    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getStepCount()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    .line 130
    .end local v0    # "item":Lcom/meizu/smart/wristband/models/database/entity/Sport;
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method
