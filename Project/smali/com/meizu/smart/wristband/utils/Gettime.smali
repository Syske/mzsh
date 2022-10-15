.class public Lcom/meizu/smart/wristband/utils/Gettime;
.super Ljava/lang/Object;
.source "Gettime.java"


# static fields
.field private static format_arg3_nosymbol:Ljava/lang/String;

.field private static format_arg5_nosymbol:Ljava/lang/String;

.field private static format_arg6_nobar:Ljava/lang/String;

.field private static format_arg6_nosymbol:Ljava/lang/String;

.field private static format_standard:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "%04d-%02d-%02d %02d:%02d:%02d"

    sput-object v0, Lcom/meizu/smart/wristband/utils/Gettime;->format_standard:Ljava/lang/String;

    .line 12
    const-string v0, "%04d%02d%02d %02d:%02d:%02d"

    sput-object v0, Lcom/meizu/smart/wristband/utils/Gettime;->format_arg6_nobar:Ljava/lang/String;

    .line 13
    const-string v0, "%04d%02d%02d"

    sput-object v0, Lcom/meizu/smart/wristband/utils/Gettime;->format_arg3_nosymbol:Ljava/lang/String;

    .line 14
    const-string v0, "%04d%02d%02d%02d%02d"

    sput-object v0, Lcom/meizu/smart/wristband/utils/Gettime;->format_arg5_nosymbol:Ljava/lang/String;

    .line 15
    const-string v0, "%04d%02d%02d%02d%02d%02d"

    sput-object v0, Lcom/meizu/smart/wristband/utils/Gettime;->format_arg6_nosymbol:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ConvertUTC2LocaleM(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "localeTimeZone"    # Ljava/lang/String;
    .param p1, "utc"    # Ljava/lang/String;

    .prologue
    .line 202
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v9, "yyyyMMddHHmm"

    invoke-direct {v5, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 205
    .local v5, "formatterUTC":Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 206
    .local v0, "cal":Ljava/util/Calendar;
    const/16 v9, 0xf

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 207
    .local v8, "zoneOffset":I
    const/16 v9, 0x10

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 210
    .local v3, "dstOffset":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 211
    .local v1, "calUTC":Ljava/util/Calendar;
    invoke-virtual {v5, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 212
    const/16 v9, 0xe

    add-int v10, v8, v3

    invoke-virtual {v1, v9, v10}, Ljava/util/Calendar;->add(II)V

    .line 214
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 215
    .local v7, "year":I
    const/4 v9, 0x2

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/lit8 v6, v9, 0x1

    .line 216
    .local v6, "month":I
    const/4 v9, 0x5

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 221
    .local v2, "day":I
    sget-object v9, Lcom/meizu/smart/wristband/utils/Gettime;->format_arg3_nosymbol:Ljava/lang/String;

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 224
    .end local v0    # "cal":Ljava/util/Calendar;
    .end local v1    # "calUTC":Ljava/util/Calendar;
    .end local v2    # "day":I
    .end local v3    # "dstOffset":I
    .end local v6    # "month":I
    .end local v7    # "year":I
    .end local v8    # "zoneOffset":I
    :goto_0
    return-object v9

    .line 222
    :catch_0
    move-exception v4

    .line 223
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 224
    const-string v9, ""

    goto :goto_0
.end method

.method public static ConvertUTC2LocaleMS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p0, "localeTimeZone"    # Ljava/lang/String;
    .param p1, "utc"    # Ljava/lang/String;

    .prologue
    .line 230
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v12, "yyyyMMddHHmm"

    invoke-direct {v6, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 233
    .local v6, "formatterUTC":Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-static/range {p0 .. p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 234
    .local v1, "cal":Ljava/util/Calendar;
    const/16 v12, 0xf

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 235
    .local v11, "zoneOffset":I
    const/16 v12, 0x10

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 238
    .local v4, "dstOffset":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 239
    .local v2, "calUTC":Ljava/util/Calendar;
    const/4 v12, 0x0

    const/16 v13, 0xc

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 240
    const/16 v12, 0xe

    add-int v13, v11, v4

    invoke-virtual {v2, v12, v13}, Ljava/util/Calendar;->add(II)V

    .line 242
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 243
    .local v10, "year":I
    const/4 v12, 0x2

    invoke-virtual {v2, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    add-int/lit8 v9, v12, 0x1

    .line 244
    .local v9, "month":I
    const/4 v12, 0x5

    invoke-virtual {v2, v12}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 245
    .local v3, "day":I
    const/16 v12, 0xb

    invoke-virtual {v2, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 246
    .local v7, "hour":I
    const/16 v12, 0xc

    invoke-virtual {v2, v12}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 249
    .local v8, "minute":I
    sget-object v12, Lcom/meizu/smart/wristband/utils/Gettime;->format_arg5_nosymbol:Ljava/lang/String;

    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 252
    .end local v1    # "cal":Ljava/util/Calendar;
    .end local v2    # "calUTC":Ljava/util/Calendar;
    .end local v3    # "day":I
    .end local v4    # "dstOffset":I
    .end local v7    # "hour":I
    .end local v8    # "minute":I
    .end local v9    # "month":I
    .end local v10    # "year":I
    .end local v11    # "zoneOffset":I
    :goto_0
    return-object v12

    .line 250
    :catch_0
    move-exception v5

    .line 251
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 252
    const-string v12, ""

    goto :goto_0
.end method

.method public static ConvertUTC2LocaleS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "localeTimeZone"    # Ljava/lang/String;
    .param p1, "utc"    # Ljava/lang/String;

    .prologue
    .line 174
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v9, "yyyyMMddHHmmss"

    invoke-direct {v5, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 177
    .local v5, "formatterUTC":Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 178
    .local v0, "cal":Ljava/util/Calendar;
    const/16 v9, 0xf

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 179
    .local v8, "zoneOffset":I
    const/16 v9, 0x10

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 182
    .local v3, "dstOffset":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 183
    .local v1, "calUTC":Ljava/util/Calendar;
    invoke-virtual {v5, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 184
    const/16 v9, 0xe

    add-int v10, v8, v3

    invoke-virtual {v1, v9, v10}, Ljava/util/Calendar;->add(II)V

    .line 186
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 187
    .local v7, "year":I
    const/4 v9, 0x2

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/lit8 v6, v9, 0x1

    .line 188
    .local v6, "month":I
    const/4 v9, 0x5

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 193
    .local v2, "day":I
    sget-object v9, Lcom/meizu/smart/wristband/utils/Gettime;->format_arg3_nosymbol:Ljava/lang/String;

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 196
    .end local v0    # "cal":Ljava/util/Calendar;
    .end local v1    # "calUTC":Ljava/util/Calendar;
    .end local v2    # "day":I
    .end local v3    # "dstOffset":I
    .end local v6    # "month":I
    .end local v7    # "year":I
    .end local v8    # "zoneOffset":I
    :goto_0
    return-object v9

    .line 194
    :catch_0
    move-exception v4

    .line 195
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 196
    const-string v9, ""

    goto :goto_0
.end method

.method public static difftime(Ljava/lang/String;Ljava/lang/String;)J
    .locals 8
    .param p0, "time1"    # Ljava/lang/String;
    .param p1, "time2"    # Ljava/lang/String;

    .prologue
    .line 58
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyyMMddHHmm"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 59
    .local v1, "formatter":Ljava/text/SimpleDateFormat;
    const/4 v2, 0x0

    .local v2, "s1":Ljava/util/Date;
    const/4 v3, 0x0

    .line 61
    .local v3, "s2":Ljava/util/Date;
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 62
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 63
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    return-wide v4

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 68
    const-wide/16 v4, 0x0

    goto :goto_0
.end method

.method public static difftimeFromNow(Ljava/lang/String;)J
    .locals 10
    .param p0, "time"    # Ljava/lang/String;

    .prologue
    .line 114
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyyMMddHHmmss"

    invoke-direct {v1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 115
    .local v1, "formatter":Ljava/text/SimpleDateFormat;
    const/4 v2, 0x0

    .local v2, "s1":Ljava/util/Date;
    const/4 v4, 0x0

    .line 117
    .local v4, "s2":Ljava/util/Date;
    :try_start_0
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .end local v2    # "s1":Ljava/util/Date;
    .local v3, "s1":Ljava/util/Date;
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 119
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 124
    .end local v3    # "s1":Ljava/util/Date;
    .restart local v2    # "s1":Ljava/util/Date;
    :goto_0
    return-wide v6

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/text/ParseException;
    :goto_1
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 124
    const-wide/16 v6, 0x0

    goto :goto_0

    .line 120
    .end local v0    # "e":Ljava/text/ParseException;
    .end local v2    # "s1":Ljava/util/Date;
    .restart local v3    # "s1":Ljava/util/Date;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "s1":Ljava/util/Date;
    .restart local v2    # "s1":Ljava/util/Date;
    goto :goto_1
.end method

.method public static difftimeFromNow2(Ljava/lang/String;)J
    .locals 8
    .param p0, "time"    # Ljava/lang/String;

    .prologue
    .line 142
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 143
    .local v1, "formatter":Ljava/text/SimpleDateFormat;
    const/4 v2, 0x0

    .local v2, "s1":Ljava/util/Date;
    const/4 v3, 0x0

    .line 145
    .local v3, "s2":Ljava/util/Date;
    :try_start_0
    sget-object v4, Lcom/meizu/smart/wristband/utils/Gettime;->format_standard:Ljava/lang/String;

    const/4 v5, 0x6

    invoke-static {v4, v5, v1}, Lcom/meizu/smart/wristband/utils/Gettime;->getUTCTimeStr(Ljava/lang/String;ILjava/text/DateFormat;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 146
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 147
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    return-wide v4

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 152
    const-wide/16 v4, 0x0

    goto :goto_0
.end method

.method public static difftimeFromNowUTC(Ljava/lang/String;)J
    .locals 8
    .param p0, "time"    # Ljava/lang/String;

    .prologue
    .line 128
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyyMMddHHmmss"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 129
    .local v1, "formatter":Ljava/text/SimpleDateFormat;
    const/4 v2, 0x0

    .local v2, "s1":Ljava/util/Date;
    const/4 v3, 0x0

    .line 131
    .local v3, "s2":Ljava/util/Date;
    :try_start_0
    sget-object v4, Lcom/meizu/smart/wristband/utils/Gettime;->format_arg6_nosymbol:Ljava/lang/String;

    const/4 v5, 0x6

    invoke-static {v4, v5, v1}, Lcom/meizu/smart/wristband/utils/Gettime;->getUTCTimeStr(Ljava/lang/String;ILjava/text/DateFormat;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 132
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 133
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    return-wide v4

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 138
    const-wide/16 v4, 0x0

    goto :goto_0
.end method

.method public static getDATETS()Ljava/lang/String;
    .locals 3

    .prologue
    .line 48
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, "dateFormat":Ljava/text/DateFormat;
    sget-object v1, Lcom/meizu/smart/wristband/utils/Gettime;->format_arg3_nosymbol:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v1, v2, v0}, Lcom/meizu/smart/wristband/utils/Gettime;->getUTCTimeStr(Ljava/lang/String;ILjava/text/DateFormat;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDATET_Hour()Ljava/lang/String;
    .locals 3

    .prologue
    .line 53
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMddHHmm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, "dateFormat":Ljava/text/DateFormat;
    sget-object v1, Lcom/meizu/smart/wristband/utils/Gettime;->format_arg5_nosymbol:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-static {v1, v2, v0}, Lcom/meizu/smart/wristband/utils/Gettime;->getUTCTimeStr(Ljava/lang/String;ILjava/text/DateFormat;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getGainTS()Ljava/lang/String;
    .locals 3

    .prologue
    .line 23
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMdd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 24
    .local v0, "dateFormat":Ljava/text/DateFormat;
    sget-object v1, Lcom/meizu/smart/wristband/utils/Gettime;->format_arg6_nobar:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-static {v1, v2, v0}, Lcom/meizu/smart/wristband/utils/Gettime;->getUTCTimeStr(Ljava/lang/String;ILjava/text/DateFormat;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getLastUpdate()Ljava/lang/String;
    .locals 3

    .prologue
    .line 29
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 30
    .local v0, "dateFormat":Ljava/text/DateFormat;
    sget-object v1, Lcom/meizu/smart/wristband/utils/Gettime;->format_arg6_nosymbol:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-static {v1, v2, v0}, Lcom/meizu/smart/wristband/utils/Gettime;->getUTCTimeStr(Ljava/lang/String;ILjava/text/DateFormat;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getLastUpdateLocale()Ljava/lang/String;
    .locals 5

    .prologue
    .line 35
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyyMMddHHmmss"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 36
    .local v0, "dateFormat":Ljava/text/DateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 38
    .local v2, "now":Ljava/util/Date;
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 44
    :goto_0
    return-object v3

    .line 40
    :catch_0
    move-exception v1

    .line 41
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 44
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getTS()Ljava/lang/String;
    .locals 3

    .prologue
    .line 18
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 19
    .local v0, "dateFormat":Ljava/text/DateFormat;
    sget-object v1, Lcom/meizu/smart/wristband/utils/Gettime;->format_standard:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-static {v1, v2, v0}, Lcom/meizu/smart/wristband/utils/Gettime;->getUTCTimeStr(Ljava/lang/String;ILjava/text/DateFormat;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getUTCTimeStr(Ljava/lang/String;ILjava/text/DateFormat;)Ljava/lang/String;
    .locals 15
    .param p0, "fmt"    # Ljava/lang/String;
    .param p1, "argcnt"    # I
    .param p2, "df"    # Ljava/text/DateFormat;

    .prologue
    .line 73
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 75
    .local v1, "cal":Ljava/util/Calendar;
    const/16 v12, 0xf

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 77
    .local v11, "zoneOffset":I
    const/16 v12, 0x10

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 79
    .local v3, "dstOffset":I
    const/16 v12, 0xe

    add-int v13, v11, v3

    neg-int v13, v13

    invoke-virtual {v1, v12, v13}, Ljava/util/Calendar;->add(II)V

    .line 81
    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 82
    .local v10, "year":I
    const/4 v12, 0x2

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    add-int/lit8 v7, v12, 0x1

    .line 83
    .local v7, "month":I
    const/4 v12, 0x5

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 84
    .local v2, "day":I
    const/16 v12, 0xb

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 85
    .local v5, "hour":I
    const/16 v12, 0xc

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 86
    .local v6, "minute":I
    const/16 v12, 0xd

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 88
    .local v8, "second":I
    const-string v9, ""

    .line 90
    .local v9, "strDate":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 104
    :goto_0
    :pswitch_0
    :try_start_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 110
    :goto_1
    return-object v9

    .line 92
    :pswitch_1
    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {p0, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 93
    goto :goto_0

    .line 95
    :pswitch_2
    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {p0, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 96
    goto :goto_0

    .line 98
    :pswitch_3
    const/4 v12, 0x6

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {p0, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 99
    goto :goto_0

    .line 105
    :catch_0
    move-exception v4

    .line 106
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 107
    const-string v9, ""

    goto/16 :goto_1

    .line 90
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static timeAddMin(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p0, "time"    # Ljava/lang/String;
    .param p1, "addMin"    # I

    .prologue
    .line 156
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyyMMddHHmm"

    invoke-direct {v2, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 157
    .local v2, "formatter":Ljava/text/SimpleDateFormat;
    const/4 v3, 0x0

    .line 159
    .local v3, "res":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 160
    .local v5, "s1":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 161
    .local v0, "cl":Ljava/util/Calendar;
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 162
    const/16 v6, 0xc

    invoke-virtual {v0, v6, p1}, Ljava/util/Calendar;->add(II)V

    .line 163
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    .line 164
    .local v4, "s":Ljava/util/Date;
    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 169
    .end local v0    # "cl":Ljava/util/Calendar;
    .end local v4    # "s":Ljava/util/Date;
    .end local v5    # "s1":Ljava/util/Date;
    :goto_0
    return-object v3

    .line 165
    :catch_0
    move-exception v1

    .line 166
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method
