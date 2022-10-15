.class public Lcom/meizu/smart/wristband/models/database/FBDBTools;
.super Ljava/lang/Object;
.source "FBDBTools.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/models/database/FBDBTools$BtDevVersion;,
        Lcom/meizu/smart/wristband/models/database/FBDBTools$ParserData;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static classifyData(Ljava/util/List;)Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "blocks":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 96
    .local v0, "dataGroupByType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;>;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .local v1, "item":Ljava/lang/Object;
    move-object v2, v1

    .line 97
    check-cast v2, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;

    .line 98
    .local v2, "monitorData":Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;
    iget-object v5, v2, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;->data:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, v2, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;->data:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 99
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "one data block header = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;->header:Lcom/meizu/smart/wristband/models/bluetooth/BleTools$Header;

    iget-object v6, v6, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$Header;->original:Ljava/lang/String;

    const-string v7, "\r\n"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "data size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;->data:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 100
    iget-object v5, v2, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;->header:Lcom/meizu/smart/wristband/models/bluetooth/BleTools$Header;

    iget v5, v5, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$Header;->type:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 101
    .local v3, "typeData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;>;"
    if-nez v3, :cond_1

    .line 102
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "typeData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .restart local v3    # "typeData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;>;"
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v5, v2, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;->header:Lcom/meizu/smart/wristband/models/bluetooth/BleTools$Header;

    iget v5, v5, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$Header;->type:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    .end local v1    # "item":Ljava/lang/Object;
    .end local v2    # "monitorData":Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;
    .end local v3    # "typeData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;>;"
    :cond_2
    return-object v0
.end method

.method public static getCalorie(DF)F
    .locals 8
    .param p0, "weight"    # D
    .param p2, "dis"    # F

    .prologue
    .line 165
    const/4 v0, 0x0

    .line 166
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

    .line 167
    return v0
.end method

.method public static getDistanceByStep(JI)F
    .locals 6
    .param p0, "step"    # J
    .param p2, "height"    # I

    .prologue
    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, "dis":F
    int-to-double v2, p2

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    long-to-double v4, p0

    mul-double/2addr v2, v4

    double-to-float v0, v2

    .line 158
    return v0
.end method

.method public static isEntityBlank(Lcom/meizu/smart/wristband/models/newwork/response/UserInfodata;)Z
    .locals 2
    .param p0, "entity"    # Lcom/meizu/smart/wristband/models/newwork/response/UserInfodata;

    .prologue
    const/4 v0, 0x1

    .line 140
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/models/newwork/response/UserInfodata;->getBirthday()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldolphin/tools/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    :cond_0
    :goto_0
    return v0

    .line 142
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/models/newwork/response/UserInfodata;->getSexCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldolphin/tools/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/models/newwork/response/UserInfodata;->getHeight()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldolphin/tools/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/models/newwork/response/UserInfodata;->getWeight()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldolphin/tools/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static logSport(Lcom/meizu/smart/wristband/models/database/entity/Sport;)V
    .locals 4
    .param p0, "sport"    # Lcom/meizu/smart/wristband/models/database/entity/Sport;

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 173
    .local v0, "stringBuffer":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sport.getStartTime()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat8:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getStartTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sport.getEndTime()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat8:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getEndTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sport.getStepCount()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getStepCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sport.getTime()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getTime()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sport.getTypeCode()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getTypeCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method public static parseBtDevVer(Ljava/lang/String;)Lcom/meizu/smart/wristband/models/database/FBDBTools$BtDevVersion;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 116
    invoke-static {p0}, Ldolphin/tools/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    const/4 v0, 0x0

    .line 134
    :goto_0
    return-object v0

    .line 119
    :cond_0
    new-instance v0, Lcom/meizu/smart/wristband/models/database/FBDBTools$BtDevVersion;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/models/database/FBDBTools$BtDevVersion;-><init>()V

    .line 120
    .local v0, "btDevVersion":Lcom/meizu/smart/wristband/models/database/FBDBTools$BtDevVersion;
    const/4 v1, 0x0

    .line 121
    .local v1, "split":[Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 122
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 126
    :goto_1
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, v0, Lcom/meizu/smart/wristband/models/database/FBDBTools$BtDevVersion;->verName:Ljava/lang/String;

    .line 127
    array-length v2, v1

    if-le v2, v3, :cond_2

    .line 128
    aget-object v2, v1, v3

    iput-object v2, v0, Lcom/meizu/smart/wristband/models/database/FBDBTools$BtDevVersion;->verCode:Ljava/lang/String;

    .line 129
    const/4 v2, 0x2

    aget-object v2, v1, v2

    iput-object v2, v0, Lcom/meizu/smart/wristband/models/database/FBDBTools$BtDevVersion;->marksCode:Ljava/lang/String;

    goto :goto_0

    .line 124
    :cond_1
    const-string v2, "\\."

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 131
    :cond_2
    iget-object v2, v0, Lcom/meizu/smart/wristband/models/database/FBDBTools$BtDevVersion;->verName:Ljava/lang/String;

    iput-object v2, v0, Lcom/meizu/smart/wristband/models/database/FBDBTools$BtDevVersion;->verCode:Ljava/lang/String;

    .line 132
    const-string v2, "001"

    iput-object v2, v0, Lcom/meizu/smart/wristband/models/database/FBDBTools$BtDevVersion;->marksCode:Ljava/lang/String;

    goto :goto_0
.end method

.method public static parser([IZ)Lcom/meizu/smart/wristband/models/database/FBDBTools$ParserData;
    .locals 14
    .param p0, "arr"    # [I
    .param p1, "realTime"    # Z

    .prologue
    const/4 v11, 0x0

    .line 53
    if-nez p1, :cond_2

    .line 54
    const/4 v0, 0x1

    .line 55
    .local v0, "b":Z
    array-length v12, p0

    move v10, v11

    :goto_0
    if-ge v10, v12, :cond_0

    aget v2, p0, v10

    .line 56
    .local v2, "i":I
    const/16 v13, 0xff

    if-eq v2, v13, :cond_1

    .line 57
    const/4 v0, 0x0

    .line 61
    .end local v2    # "i":I
    :cond_0
    if-eqz v0, :cond_2

    const/4 v3, 0x0

    .line 85
    .end local v0    # "b":Z
    :goto_1
    return-object v3

    .line 55
    .restart local v0    # "b":Z
    .restart local v2    # "i":I
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 64
    .end local v0    # "b":Z
    .end local v2    # "i":I
    :cond_2
    const/4 v1, 0x0

    .local v1, "flag":I
    const/4 v4, 0x0

    .line 65
    .local v4, "s":I
    const/4 v7, 0x0

    .local v7, "time":I
    const/4 v6, 0x0

    .local v6, "temp":I
    const/4 v9, 0x0

    .local v9, "value":I
    const/4 v8, 0x0

    .line 66
    .local v8, "usetime":I
    aget v10, p0, v11

    shr-int/lit8 v10, v10, 0x6

    and-int/lit8 v1, v10, 0x3

    .line 67
    const/4 v4, 0x0

    move v5, v4

    .end local v4    # "s":I
    .local v5, "s":I
    :goto_2
    const/4 v10, 0x4

    if-ge v5, v10, :cond_3

    .line 68
    shl-int/lit8 v7, v7, 0x10

    .line 69
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "s":I
    .restart local v4    # "s":I
    aget v10, p0, v5

    shl-int/lit8 v6, v10, 0x8

    .line 70
    aget v10, p0, v4

    or-int/2addr v10, v6

    or-int/2addr v7, v10

    .line 67
    add-int/lit8 v4, v4, 0x1

    move v5, v4

    .end local v4    # "s":I
    .restart local v5    # "s":I
    goto :goto_2

    .line 72
    :cond_3
    const v10, 0x3fffffff    # 1.9999999f

    and-int/2addr v7, v10

    .line 73
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "s":I
    .restart local v4    # "s":I
    aget v10, p0, v5

    shl-int/lit8 v6, v10, 0x8

    .line 74
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "s":I
    .restart local v5    # "s":I
    aget v10, p0, v4

    or-int v9, v6, v10

    .line 75
    if-eqz p1, :cond_4

    .line 76
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "s":I
    .restart local v4    # "s":I
    aget v10, p0, v5

    shl-int/lit8 v6, v10, 0x8

    .line 77
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "s":I
    .restart local v5    # "s":I
    aget v10, p0, v4

    or-int v8, v6, v10

    move v4, v5

    .line 80
    .end local v5    # "s":I
    .restart local v4    # "s":I
    :goto_3
    new-instance v3, Lcom/meizu/smart/wristband/models/database/FBDBTools$ParserData;

    invoke-direct {v3}, Lcom/meizu/smart/wristband/models/database/FBDBTools$ParserData;-><init>()V

    .line 81
    .local v3, "parserData":Lcom/meizu/smart/wristband/models/database/FBDBTools$ParserData;
    iput v1, v3, Lcom/meizu/smart/wristband/models/database/FBDBTools$ParserData;->flag:I

    .line 82
    int-to-long v10, v7

    iput-wide v10, v3, Lcom/meizu/smart/wristband/models/database/FBDBTools$ParserData;->secondTime:J

    .line 83
    iput v9, v3, Lcom/meizu/smart/wristband/models/database/FBDBTools$ParserData;->value:I

    .line 84
    iput v8, v3, Lcom/meizu/smart/wristband/models/database/FBDBTools$ParserData;->value1:I

    goto :goto_1

    .end local v3    # "parserData":Lcom/meizu/smart/wristband/models/database/FBDBTools$ParserData;
    .end local v4    # "s":I
    .restart local v5    # "s":I
    :cond_4
    move v4, v5

    .end local v5    # "s":I
    .restart local v4    # "s":I
    goto :goto_3
.end method

.method public static splitData(Ljava/util/List;I)Ljava/util/List;
    .locals 5
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;I)",
            "Ljava/util/List",
            "<[I>;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "bytes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    const/4 v0, 0x0

    .line 40
    .local v0, "bs":[I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v2, "l":Ljava/util/List;, "Ljava/util/List<[I>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 43
    rem-int v3, v1, p1

    if-nez v3, :cond_0

    .line 44
    new-array v0, p1, [I

    .line 45
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_0
    rem-int v4, v1, p1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    aput v3, v0, v4

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    :cond_1
    return-object v2
.end method

.method public static transformTime(J)Ljava/util/Date;
    .locals 6
    .param p0, "second"    # J

    .prologue
    .line 89
    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p0

    const-wide v4, 0x125e5770400L

    add-long v0, v2, v4

    .line 90
    .local v0, "timeInMillisecond":J
    const-wide/32 v2, 0x1b77400

    add-long/2addr v0, v2

    .line 91
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object v2
.end method
