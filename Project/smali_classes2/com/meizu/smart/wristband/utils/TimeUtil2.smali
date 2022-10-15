.class public Lcom/meizu/smart/wristband/utils/TimeUtil2;
.super Ljava/lang/Object;
.source "TimeUtil2.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocalString(Ljava/text/SimpleDateFormat;Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p0, "format"    # Ljava/text/SimpleDateFormat;
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 36
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 37
    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "result":Ljava/lang/String;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 39
    return-object v0
.end method

.method public static getTimeDev()J
    .locals 6

    .prologue
    .line 43
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 44
    .local v0, "cal":Ljava/util/Calendar;
    const/16 v3, 0xf

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 45
    .local v2, "zoneOffset":I
    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 46
    .local v1, "dstOffset":I
    add-int v3, v2, v1

    div-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    return-wide v4
.end method

.method public static getUtcDate(Ljava/text/SimpleDateFormat;Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .param p0, "format"    # Ljava/text/SimpleDateFormat;
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 22
    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 23
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 25
    .local v1, "result":Ljava/util/Date;
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 30
    :goto_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 31
    return-object v1

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getUtcString(Ljava/text/SimpleDateFormat;Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p0, "format"    # Ljava/text/SimpleDateFormat;
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 15
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 16
    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 17
    .local v0, "result":Ljava/lang/String;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 18
    return-object v0
.end method
