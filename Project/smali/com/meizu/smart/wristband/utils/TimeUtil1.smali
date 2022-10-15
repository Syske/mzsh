.class public Lcom/meizu/smart/wristband/utils/TimeUtil1;
.super Ljava/lang/Object;
.source "TimeUtil1.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatTimeString(I)Ljava/lang/String;
    .locals 6
    .param p0, "minute"    # I

    .prologue
    .line 12
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v3, "00"

    invoke-direct {v0, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 13
    .local v0, "decimalFormat2":Ljava/text/DecimalFormat;
    div-int/lit8 v1, p0, 0x3c

    .line 14
    .local v1, "h":I
    rem-int/lit8 v2, p0, 0x3c

    .line 15
    .local v2, "m":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "h"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    int-to-long v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static formatTimeString1(I)Ljava/lang/String;
    .locals 8
    .param p0, "secend"    # I

    .prologue
    .line 19
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v4, "00"

    invoke-direct {v0, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 20
    .local v0, "decimalFormat2":Ljava/text/DecimalFormat;
    div-int/lit8 v4, p0, 0x3c

    div-int/lit8 v1, v4, 0x3c

    .line 21
    .local v1, "h":I
    div-int/lit8 v4, p0, 0x3c

    rem-int/lit8 v2, v4, 0x3c

    .line 22
    .local v2, "m":I
    rem-int/lit8 v3, p0, 0x3c

    .line 23
    .local v3, "s":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v6, v1

    invoke-virtual {v0, v6, v7}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    int-to-long v6, v2

    invoke-virtual {v0, v6, v7}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    int-to-long v6, v3

    invoke-virtual {v0, v6, v7}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getCurDateEnd(Ljava/util/Date;)Ljava/util/Date;
    .locals 4
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    const/16 v3, 0xc

    .line 135
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 136
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 137
    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 138
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->clear(I)V

    .line 139
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->clear(I)V

    .line 140
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->clear(I)V

    .line 141
    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 142
    const/4 v1, -0x1

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->add(II)V

    .line 143
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public static getDateEnd(Ljava/util/Date;)Ljava/util/Date;
    .locals 3
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 124
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 125
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 126
    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 127
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->clear(I)V

    .line 128
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->clear(I)V

    .line 129
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->clear(I)V

    .line 130
    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 131
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public static getDateForOffset(Ljava/util/Date;II)Ljava/util/Date;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "field"    # I
    .param p2, "value"    # I

    .prologue
    .line 81
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 82
    .local v0, "cl":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 83
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->add(II)V

    .line 84
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public static getDateHourStart(Ljava/util/Date;I)Ljava/util/Date;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "hour"    # I

    .prologue
    .line 113
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 114
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 115
    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 116
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->clear(I)V

    .line 117
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->clear(I)V

    .line 118
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->clear(I)V

    .line 119
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public static getDateStart(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 2
    .param p0, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 88
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 89
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->clear(I)V

    .line 90
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->clear(I)V

    .line 91
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->clear(I)V

    .line 92
    return-object p0
.end method

.method public static getDateStart(Ljava/util/Date;)Ljava/util/Date;
    .locals 3
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 97
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 98
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 99
    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 100
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->clear(I)V

    .line 101
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->clear(I)V

    .line 102
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->clear(I)V

    .line 103
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public static getMonthDateRange(Ljava/util/Date;)[Ljava/util/Date;
    .locals 6
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 44
    new-array v1, v5, [Ljava/util/Date;

    .line 45
    .local v1, "result":[Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 46
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-static {p0}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getDateStart(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 47
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 48
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    aput-object v3, v1, v2

    .line 50
    invoke-virtual {v0, v5, v4}, Ljava/util/Calendar;->add(II)V

    .line 51
    const/16 v2, 0xe

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 52
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    aput-object v2, v1, v4

    .line 54
    return-object v1
.end method

.method public static getWeekDateRange(Ljava/util/Date;)[Ljava/util/Date;
    .locals 9
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x7

    const/4 v6, 0x1

    .line 27
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 28
    .local v0, "clStart":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 29
    move-object v2, v0

    .line 30
    .local v2, "wbegin":Ljava/util/Calendar;
    move-object v3, v0

    .line 31
    .local v3, "wend":Ljava/util/Calendar;
    const/4 v4, 0x2

    new-array v1, v4, [Ljava/util/Date;

    .line 32
    .local v1, "result":[Ljava/util/Date;
    :goto_0
    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-eq v4, v6, :cond_0

    .line 33
    const/4 v4, -0x1

    invoke-virtual {v2, v8, v4}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 35
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-static {v5}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getDateStart(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v5

    aput-object v5, v1, v4

    .line 36
    :goto_1
    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-eq v4, v7, :cond_1

    .line 37
    invoke-virtual {v3, v8, v6}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    .line 39
    :cond_1
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-static {v4}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getCurDateEnd(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v4

    aput-object v4, v1, v6

    .line 40
    return-object v1
.end method

.method public static getYearDateRange(Ljava/util/Calendar;I)[Ljava/util/Date;
    .locals 5
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "offset"    # I

    .prologue
    const/16 v4, 0xe

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    new-array v0, v1, [Ljava/util/Date;

    .line 60
    .local v0, "result":[Ljava/util/Date;
    invoke-virtual {p0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 61
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 62
    const/16 v1, 0xb

    invoke-virtual {p0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 63
    const/16 v1, 0xc

    invoke-virtual {p0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 64
    const/16 v1, 0xd

    invoke-virtual {p0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 65
    invoke-virtual {p0, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 66
    invoke-virtual {p0, v3, p1}, Ljava/util/Calendar;->add(II)V

    .line 68
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    aput-object v1, v0, v2

    .line 70
    invoke-virtual {p0, v3, v3}, Ljava/util/Calendar;->add(II)V

    .line 71
    const/4 v1, -0x1

    invoke-virtual {p0, v4, v1}, Ljava/util/Calendar;->add(II)V

    .line 76
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    aput-object v1, v0, v3

    .line 77
    return-object v0
.end method

.method public static isSameDay(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 2
    .param p0, "date1"    # Ljava/util/Date;
    .param p1, "date2"    # Ljava/util/Date;

    .prologue
    .line 147
    sget-object v0, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat6:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat6:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    const/4 v0, 0x1

    .line 150
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSameMonth(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 2
    .param p0, "date1"    # Ljava/util/Date;
    .param p1, "date2"    # Ljava/util/Date;

    .prologue
    .line 164
    sget-object v0, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat11:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat11:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    const/4 v0, 0x1

    .line 166
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSameWeek(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 6
    .param p0, "date1"    # Ljava/util/Date;
    .param p1, "date2"    # Ljava/util/Date;

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x1

    .line 154
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 155
    .local v0, "c1":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 156
    .local v1, "c2":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 157
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 158
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 160
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
