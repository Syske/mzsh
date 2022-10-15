.class public Lcom/meizu/smart/wristband/models/bluetooth/BleTools;
.super Ljava/lang/Object;
.source "BleTools.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;,
        Lcom/meizu/smart/wristband/models/bluetooth/BleTools$Header;
    }
.end annotation


# static fields
.field public static final BLE_GAP_AD_TYPE_COMPLETE_LOCAL_NAME:B = 0x9t

.field public static final BLE_GAP_AD_TYPE_MANUFACTURER_SPECIFIC_DATA:B = -0x1t

.field public static final BLE_GAP_AD_TYPE_OTA_ADDRESS:B = 0x3t

.field public static final BLE_GAP_AD_TYPE_TX_POWER_LEVEL:B = 0xat


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/models/bluetooth/BleTools$Header;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/models/bluetooth/BleTools$Header;

    .prologue
    .line 25
    invoke-static {p0}, Lcom/meizu/smart/wristband/models/bluetooth/BleTools;->paserDataHeader(Lcom/meizu/smart/wristband/models/bluetooth/BleTools$Header;)V

    return-void
.end method

.method public static analysisBroadcastData([BB)Ljava/lang/String;
    .locals 25
    .param p0, "records"    # [B
    .param p1, "dataCode"    # B

    .prologue
    .line 92
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v6, "data":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v15, 0x0

    .line 94
    .local v15, "result":Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v11, v0, :cond_1

    .line 97
    aget-byte v20, p0, v11

    if-eqz v20, :cond_0

    aget-byte v20, p0, v11

    const/16 v21, 0x1f

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_3

    .line 98
    :cond_0
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v20, v0

    add-int v11, v11, v20

    .line 110
    :cond_1
    const/4 v13, 0x0

    .line 111
    .local v13, "mode":Ljava/lang/String;
    const/4 v14, 0x0

    .line 112
    .local v14, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 113
    .local v2, "address":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_2
    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_10

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 117
    .local v3, "analysisData":[B
    const/16 v20, 0x1

    aget-byte v20, v3, v20

    sparse-switch v20, :sswitch_data_0

    goto :goto_1

    .line 146
    :sswitch_0
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "BLE_GAP_AD_TYPE_OTA_ADDRESS BLE_GAP_AD_TYPE_MANUFACTURER_SPECIFIC_DATA analysisData.length= "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    array-length v0, v3

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, ",mode = "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ldolphin/tools/util/LogUtil;->d(Ljava/lang/String;)V

    .line 147
    array-length v0, v3

    move/from16 v20, v0

    const/16 v22, 0x7

    move/from16 v0, v20

    move/from16 v1, v22

    if-lt v0, v1, :cond_2

    .line 152
    if-eqz v13, :cond_2

    .line 153
    const-string v20, "00"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 154
    array-length v0, v3

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x4

    move/from16 v0, v20

    new-array v8, v0, [B

    .line 155
    .local v8, "data_address":[B
    const/16 v19, 0x4

    .local v19, "y":I
    :goto_2
    array-length v0, v3

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_8

    .line 156
    add-int/lit8 v20, v19, -0x4

    aget-byte v22, v3, v19

    aput-byte v22, v8, v20

    .line 155
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 101
    .end local v2    # "address":Ljava/lang/String;
    .end local v3    # "analysisData":[B
    .end local v8    # "data_address":[B
    .end local v13    # "mode":Ljava/lang/String;
    .end local v14    # "name":Ljava/lang/String;
    .end local v19    # "y":I
    :cond_3
    aget-byte v20, p0, v11

    add-int/lit8 v12, v20, 0x1

    .line 102
    .local v12, "length":I
    new-array v7, v12, [B

    .line 103
    .local v7, "dataChips":[B
    const/16 v19, 0x0

    .restart local v19    # "y":I
    :goto_3
    move/from16 v0, v19

    if-ge v0, v12, :cond_4

    .line 104
    add-int v20, v11, v19

    aget-byte v20, p0, v20

    aput-byte v20, v7, v19

    .line 103
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 106
    :cond_4
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    add-int/2addr v11, v12

    .line 108
    goto/16 :goto_0

    .line 120
    .end local v7    # "dataChips":[B
    .end local v12    # "length":I
    .end local v19    # "y":I
    .restart local v2    # "address":Ljava/lang/String;
    .restart local v3    # "analysisData":[B
    .restart local v13    # "mode":Ljava/lang/String;
    .restart local v14    # "name":Ljava/lang/String;
    :sswitch_1
    array-length v0, v3

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x2

    move/from16 v0, v20

    new-array v10, v0, [B

    .line 121
    .local v10, "data_name":[B
    const/16 v19, 0x2

    .restart local v19    # "y":I
    :goto_4
    array-length v0, v3

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_5

    .line 122
    add-int/lit8 v20, v19, -0x2

    aget-byte v22, v3, v19

    aput-byte v22, v10, v20

    .line 121
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 124
    :cond_5
    const/16 v16, 0x0

    .line 125
    .local v16, "stringBuilder":Ljava/lang/StringBuilder;
    if-eqz v10, :cond_2

    array-length v0, v10

    move/from16 v20, v0

    if-lez v20, :cond_2

    .line 126
    new-instance v16, Ljava/lang/StringBuilder;

    .end local v16    # "stringBuilder":Ljava/lang/StringBuilder;
    array-length v0, v10

    move/from16 v20, v0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 127
    .restart local v16    # "stringBuilder":Ljava/lang/StringBuilder;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "length = "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    array-length v0, v10

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ldolphin/tools/util/LogUtil;->d(Ljava/lang/String;)V

    .line 128
    array-length v0, v10

    move/from16 v22, v0

    const/16 v20, 0x0

    :goto_5
    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_6

    aget-byte v5, v10, v20

    .line 129
    .local v5, "byteChar":B
    int-to-char v0, v5

    move/from16 v23, v0

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    .line 131
    .end local v5    # "byteChar":B
    :cond_6
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 132
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "\u540d\u5b57"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ldolphin/tools/util/LogUtil;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 137
    .end local v10    # "data_name":[B
    .end local v16    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v19    # "y":I
    :sswitch_2
    array-length v0, v3

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x2

    move/from16 v0, v20

    new-array v9, v0, [B

    .line 138
    .local v9, "data_mode":[B
    const/16 v19, 0x2

    .restart local v19    # "y":I
    :goto_6
    array-length v0, v3

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_7

    .line 139
    add-int/lit8 v20, v19, -0x2

    aget-byte v22, v3, v19

    aput-byte v22, v9, v20

    .line 138
    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    .line 141
    :cond_7
    const-string v20, "%02X"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    aget-byte v24, v9, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 142
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "mode :"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ldolphin/tools/util/LogUtil;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 158
    .end local v9    # "data_mode":[B
    .restart local v8    # "data_address":[B
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    array-length v0, v8

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 159
    .local v4, "builder":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    :goto_7
    array-length v0, v8

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v11, v0, :cond_a

    .line 160
    const-string v20, "%02X"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-byte v24, v8, v11

    invoke-static/range {v24 .. v24}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    array-length v0, v8

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    if-eq v11, v0, :cond_9

    .line 162
    const-string v20, ":"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 165
    :cond_a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 186
    :goto_8
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "\u5730\u5740 = "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ldolphin/tools/util/LogUtil;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 167
    .end local v4    # "builder":Ljava/lang/StringBuilder;
    .end local v8    # "data_address":[B
    .end local v19    # "y":I
    :cond_b
    array-length v0, v3

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x2

    move/from16 v0, v20

    new-array v8, v0, [B

    .line 168
    .restart local v8    # "data_address":[B
    const/16 v19, 0x2

    .restart local v19    # "y":I
    :goto_9
    array-length v0, v3

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_c

    .line 169
    add-int/lit8 v20, v19, -0x2

    aget-byte v22, v3, v19

    aput-byte v22, v8, v20

    .line 168
    add-int/lit8 v19, v19, 0x1

    goto :goto_9

    .line 171
    :cond_c
    const/16 v18, 0x0

    .local v18, "x":I
    :goto_a
    const/16 v20, 0x6

    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_d

    .line 172
    aget-byte v17, v8, v18

    .line 173
    .local v17, "temp":B
    add-int/lit8 v20, v18, 0x1

    aget-byte v20, v8, v20

    aput-byte v20, v8, v18

    .line 174
    add-int/lit8 v20, v18, 0x1

    aput-byte v17, v8, v20

    .line 175
    add-int/lit8 v18, v18, 0x2

    .line 176
    goto :goto_a

    .line 177
    .end local v17    # "temp":B
    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    array-length v0, v8

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 178
    .restart local v4    # "builder":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    :goto_b
    array-length v0, v8

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v11, v0, :cond_f

    .line 179
    const-string v20, "%02X"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-byte v24, v8, v11

    invoke-static/range {v24 .. v24}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    array-length v0, v8

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    if-eq v11, v0, :cond_e

    .line 181
    const-string v20, ":"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    :cond_e
    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    .line 184
    :cond_f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_8

    .line 194
    .end local v3    # "analysisData":[B
    .end local v4    # "builder":Ljava/lang/StringBuilder;
    .end local v8    # "data_address":[B
    .end local v18    # "x":I
    .end local v19    # "y":I
    :cond_10
    sparse-switch p1, :sswitch_data_1

    .line 208
    :goto_c
    return-object v15

    .line 196
    :sswitch_3
    move-object v15, v14

    .line 197
    goto :goto_c

    .line 199
    :sswitch_4
    move-object v15, v13

    .line 200
    goto :goto_c

    .line 203
    :sswitch_5
    move-object v15, v2

    .line 204
    goto :goto_c

    .line 117
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x3 -> :sswitch_0
        0x9 -> :sswitch_1
        0xa -> :sswitch_2
    .end sparse-switch

    .line 194
    :sswitch_data_1
    .sparse-switch
        -0x1 -> :sswitch_5
        0x3 -> :sswitch_5
        0x9 -> :sswitch_3
        0xa -> :sswitch_4
    .end sparse-switch
.end method

.method public static parseCmd(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "cmd"    # Ljava/lang/String;

    .prologue
    .line 234
    const-string v0, "="

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parseCmdResponse(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "cmd"    # Ljava/lang/String;

    .prologue
    .line 238
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static paserDataHeader(Lcom/meizu/smart/wristband/models/bluetooth/BleTools$Header;)V
    .locals 4
    .param p0, "header"    # Lcom/meizu/smart/wristband/models/bluetooth/BleTools$Header;

    .prologue
    const/4 v3, 0x1

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "original = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$Header;->original:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 215
    iget-object v1, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$Header;->original:Ljava/lang/String;

    const-string v2, "end"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 231
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v1, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$Header;->original:Ljava/lang/String;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "arr":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    .line 221
    const-string v1, ""

    iput-object v1, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$Header;->original:Ljava/lang/String;

    goto :goto_0

    .line 224
    :cond_1
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$Header;->type:I

    .line 225
    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$Header;->len:I

    .line 226
    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$Header;->receiveLen:I

    .line 227
    const/4 v1, 0x3

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$Header;->num:I

    .line 228
    const/4 v1, 0x4

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$Header;->total:I

    .line 229
    const/4 v1, 0x5

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$Header;->crc:Ljava/lang/String;

    .line 230
    const/4 v1, 0x6

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$Header;->en:Ljava/lang/String;

    goto :goto_0
.end method

.method public static requestData(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;)Lrx/Observable;
    .locals 2
    .param p0, "serverUuid"    # Ljava/util/UUID;
    .param p1, "characteristicUuid"    # Ljava/util/UUID;
    .param p2, "characteristicUuidRead"    # Ljava/util/UUID;
    .param p3, "common_requestData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/UUID;",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 332
    new-instance v0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6;-><init>(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$5;

    invoke-direct {v1, p3}, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$5;-><init>(Ljava/lang/String;)V

    .line 371
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$4;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$4;-><init>()V

    .line 377
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static sendMessage(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;)Lrx/Observable;
    .locals 1
    .param p0, "serverUuid"    # Ljava/util/UUID;
    .param p1, "characteristicUuid"    # Ljava/util/UUID;
    .param p2, "characteristicUuidRead"    # Ljava/util/UUID;
    .param p3, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/UUID;",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 251
    invoke-static {p0, p1, p2, p3}, Lcom/meizu/smart/wristband/bluetooth/BleApi;->sendMsg(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static sendMessage(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;I)Lrx/Observable;
    .locals 1
    .param p0, "serverUuid"    # Ljava/util/UUID;
    .param p1, "characteristicUuid"    # Ljava/util/UUID;
    .param p2, "characteristicUuidRead"    # Ljava/util/UUID;
    .param p3, "cmd"    # Ljava/lang/String;
    .param p4, "timout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/UUID;",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            "I)",
            "Lrx/Observable",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 247
    invoke-static {p0, p1, p2, p3, p4}, Lcom/meizu/smart/wristband/bluetooth/BleApi;->sendMsg(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static sendMessage(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;[B)Lrx/Observable;
    .locals 1
    .param p0, "serverUuid"    # Ljava/util/UUID;
    .param p1, "characteristicUuid"    # Ljava/util/UUID;
    .param p2, "characteristicUuidRead"    # Ljava/util/UUID;
    .param p3, "cmd"    # Ljava/lang/String;
    .param p4, "buffer"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/UUID;",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            "[B)",
            "Lrx/Observable",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 242
    invoke-static {p0, p1, p2, p3, p4}, Lcom/meizu/smart/wristband/bluetooth/BleApi;->sendMsg(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;[B)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static sendTextMessage(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;)Lrx/Observable;
    .locals 1
    .param p0, "serverUuid"    # Ljava/util/UUID;
    .param p1, "characteristicUuid"    # Ljava/util/UUID;
    .param p2, "characteristicUuidRead"    # Ljava/util/UUID;
    .param p3, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/UUID;",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    const/16 v0, 0x2710

    invoke-static {p0, p1, p2, p3, v0}, Lcom/meizu/smart/wristband/models/bluetooth/BleTools;->sendTextMessage(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static sendTextMessage(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;I)Lrx/Observable;
    .locals 3
    .param p0, "serverUuid"    # Ljava/util/UUID;
    .param p1, "characteristicUuid"    # Ljava/util/UUID;
    .param p2, "characteristicUuidRead"    # Ljava/util/UUID;
    .param p3, "cmd"    # Ljava/lang/String;
    .param p4, "timeout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/UUID;",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            "I)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    const-string v0, "wxf_music"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bletools sendTextMessage cmd ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    new-instance v0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3;-><init>(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$2;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$2;-><init>()V

    .line 315
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$1;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$1;-><init>()V

    .line 321
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
