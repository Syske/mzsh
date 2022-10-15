.class public Lcom/meizu/smart/wristband/models/database/StatConvert;
.super Ljava/lang/Object;
.source "StatConvert.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static avgDays(Lcom/meizu/smart/wristband/models/database/entity/Sleep;)V
    .locals 6
    .param p0, "sleep1"    # Lcom/meizu/smart/wristband/models/database/entity/Sleep;

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getTotalDuration()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 78
    .local v0, "a1":I
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getDeepDuration()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 79
    .local v1, "a2":I
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getDreamDuration()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 80
    .local v2, "a3":I
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getShallowDuration()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 81
    .local v3, "a4":I
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getWakeDuration()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 83
    .local v4, "a5":I
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getScore()Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->intValue()I

    move-result v5

    div-int v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->setTotalDuration(Ljava/lang/Integer;)V

    .line 84
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getScore()Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->intValue()I

    move-result v5

    div-int v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->setDeepDuration(Ljava/lang/Integer;)V

    .line 85
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getScore()Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->intValue()I

    move-result v5

    div-int v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->setDreamDuration(Ljava/lang/Integer;)V

    .line 86
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getScore()Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->intValue()I

    move-result v5

    div-int v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->setShallowDuration(Ljava/lang/Integer;)V

    .line 87
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getScore()Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->intValue()I

    move-result v5

    div-int v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->setWakeDuration(Ljava/lang/Integer;)V

    .line 88
    return-void
.end method

.method public static mergeDays(Lcom/meizu/smart/wristband/models/database/entity/Sleep;Lcom/meizu/smart/wristband/models/database/entity/Sleep;)V
    .locals 7
    .param p0, "sleep1"    # Lcom/meizu/smart/wristband/models/database/entity/Sleep;
    .param p1, "sleep2"    # Lcom/meizu/smart/wristband/models/database/entity/Sleep;

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getScore()Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->setScore(Ljava/lang/Float;)V

    .line 62
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getEndTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->setEndTime(Ljava/util/Date;)V

    .line 63
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getTotalDuration()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getTotalDuration()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int v0, v5, v6

    .line 64
    .local v0, "a1":I
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getDeepDuration()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getDeepDuration()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int v1, v5, v6

    .line 65
    .local v1, "a2":I
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getDreamDuration()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getDreamDuration()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int v2, v5, v6

    .line 66
    .local v2, "a3":I
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getShallowDuration()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getShallowDuration()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int v3, v5, v6

    .line 67
    .local v3, "a4":I
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getWakeDuration()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getWakeDuration()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int v4, v5, v6

    .line 69
    .local v4, "a5":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->setTotalDuration(Ljava/lang/Integer;)V

    .line 70
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->setDeepDuration(Ljava/lang/Integer;)V

    .line 71
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->setDreamDuration(Ljava/lang/Integer;)V

    .line 72
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->setShallowDuration(Ljava/lang/Integer;)V

    .line 73
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->setWakeDuration(Ljava/lang/Integer;)V

    .line 74
    return-void
.end method

.method public static mergeDays(Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;)V
    .locals 2
    .param p0, "oldSS1"    # Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;
    .param p1, "dayData"    # Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;

    .prologue
    .line 92
    iget v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->dayCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->dayCount:I

    .line 93
    iget-object v0, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->endTime:Ljava/util/Date;

    iput-object v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->endTime:Ljava/util/Date;

    .line 95
    iget v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->allstep:I

    iget v1, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->allstep:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->allstep:I

    .line 96
    iget v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->runstep:I

    iget v1, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->runstep:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->runstep:I

    .line 97
    iget v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->walkstep:I

    iget v1, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->walkstep:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->walkstep:I

    .line 98
    iget v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->aerobicsstep:I

    iget v1, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->aerobicsstep:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->aerobicsstep:I

    .line 100
    iget v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->time:I

    iget v1, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->time:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->time:I

    .line 101
    iget v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->runtime:I

    iget v1, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->runtime:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->runtime:I

    .line 102
    iget v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->walktime:I

    iget v1, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->walktime:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->walktime:I

    .line 103
    iget v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->aerobicstime:I

    iget v1, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->aerobicstime:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->aerobicstime:I

    .line 105
    iget v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->distance:I

    iget v1, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->distance:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->distance:I

    .line 106
    iget v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->rundistance:I

    iget v1, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->rundistance:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->rundistance:I

    .line 107
    iget v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->walkdistance:I

    iget v1, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->walkdistance:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->walkdistance:I

    .line 108
    iget v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->aerobicsdistance:I

    iget v1, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->aerobicsdistance:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->aerobicsdistance:I

    .line 110
    iget v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->calorie:F

    iget v1, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->calorie:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->calorie:F

    .line 111
    iget v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->runcalorie:F

    iget v1, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->runcalorie:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->runcalorie:F

    .line 112
    iget v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->walkcalorie:F

    iget v1, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->walkcalorie:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->walkcalorie:F

    .line 113
    iget v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->aerobicscalorie:F

    iget v1, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->aerobicscalorie:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->aerobicscalorie:F

    .line 115
    iget v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->allstep:I

    iget v1, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->dayCount:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->avgstep:I

    .line 116
    iget v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->runstep:I

    iget v1, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->dayCount:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->avgrunstep:I

    .line 117
    iget v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->walkstep:I

    iget v1, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->dayCount:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->avgwalkstep:I

    .line 118
    iget v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->aerobicsstep:I

    iget v1, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->dayCount:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->avgaerobicsstep:I

    .line 120
    iget v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->time:I

    iget v1, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->dayCount:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->avgtime:I

    .line 121
    iget v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->runtime:I

    iget v1, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->dayCount:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->avgruntime:I

    .line 122
    iget v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->walktime:I

    iget v1, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->dayCount:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->avgwalktime:I

    .line 123
    iget v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->aerobicstime:I

    iget v1, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->dayCount:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->avgaerobicstime:I

    .line 126
    iget v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->distance:I

    iget v1, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->dayCount:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->avgdistance:I

    .line 127
    iget v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->rundistance:I

    iget v1, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->dayCount:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->avgrundistance:I

    .line 128
    iget v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->walkdistance:I

    iget v1, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->dayCount:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->avgwalkdistance:I

    .line 129
    iget v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->aerobicsdistance:I

    iget v1, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->dayCount:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->avgaerobicsdistance:I

    .line 131
    iget v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->calorie:F

    iget v1, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->dayCount:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->avgcalorie:F

    .line 132
    iget v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->runcalorie:F

    iget v1, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->dayCount:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->avgruncalorie:F

    .line 133
    iget v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->walkcalorie:F

    iget v1, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->dayCount:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->avgwalkcalorie:F

    .line 134
    iget v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->aerobicscalorie:F

    iget v1, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->dayCount:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->avgaerobicscalorie:F

    .line 136
    return-void
.end method

.method public static parseStatData3(Lcom/meizu/smart/wristband/models/database/entity/User;[Ljava/lang/String;)Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;
    .locals 16
    .param p0, "user"    # Lcom/meizu/smart/wristband/models/database/entity/User;
    .param p1, "param"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 18
    move-object/from16 v4, p1

    .line 19
    .local v4, "resultColumns":[Ljava/lang/String;
    const/4 v12, 0x0

    aget-object v8, v4, v12

    .line 20
    .local v8, "startTime":Ljava/lang/String;
    const/4 v12, 0x1

    aget-object v3, v4, v12

    .line 21
    .local v3, "endTime":Ljava/lang/String;
    const/4 v12, 0x2

    aget-object v9, v4, v12

    .line 22
    .local v9, "stepCount":Ljava/lang/String;
    const/4 v12, 0x3

    aget-object v5, v4, v12

    .line 23
    .local v5, "runstepCount":Ljava/lang/String;
    const/4 v12, 0x4

    aget-object v10, v4, v12

    .line 24
    .local v10, "walkstepCount":Ljava/lang/String;
    const/4 v12, 0x5

    aget-object v0, v4, v12

    .line 25
    .local v0, "aerobicsCount":Ljava/lang/String;
    const/4 v12, 0x6

    aget-object v2, v4, v12

    .line 26
    .local v2, "alltime":Ljava/lang/String;
    const/4 v12, 0x7

    aget-object v6, v4, v12

    .line 27
    .local v6, "runtime":Ljava/lang/String;
    const/16 v12, 0x8

    aget-object v11, v4, v12

    .line 28
    .local v11, "walktime":Ljava/lang/String;
    const/16 v12, 0x9

    aget-object v1, v4, v12

    .line 30
    .local v1, "aerobicstime":Ljava/lang/String;
    new-instance v7, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;

    invoke-direct {v7}, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;-><init>()V

    .line 31
    .local v7, "sp":Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;
    const/4 v12, 0x1

    iput v12, v7, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->dayCount:I

    .line 32
    new-instance v12, Ljava/util/Date;

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-direct {v12, v14, v15}, Ljava/util/Date;-><init>(J)V

    iput-object v12, v7, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->startTime:Ljava/util/Date;

    .line 33
    new-instance v12, Ljava/util/Date;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-direct {v12, v14, v15}, Ljava/util/Date;-><init>(J)V

    iput-object v12, v7, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->endTime:Ljava/util/Date;

    .line 34
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "parseStatData 1 = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " 2 = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v7, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->startTime:Ljava/util/Date;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " 3 = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 36
    invoke-static {v9}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    iput v12, v7, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->allstep:I

    .line 37
    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    iput v12, v7, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->runstep:I

    .line 38
    invoke-static {v10}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    iput v12, v7, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->walkstep:I

    .line 39
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    iput v12, v7, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->aerobicsstep:I

    .line 41
    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    iput v12, v7, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->time:I

    .line 42
    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    iput v12, v7, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->runtime:I

    .line 43
    invoke-static {v11}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    iput v12, v7, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->walktime:I

    .line 44
    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    iput v12, v7, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->aerobicstime:I

    .line 47
    iget v12, v7, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->allstep:I

    int-to-long v12, v12

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/smart/wristband/models/database/entity/User;->getHeight()Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v12, v13, v14}, Lcom/meizu/smart/wristband/models/database/FBDBTools;->getDistanceByStep(JI)F

    move-result v12

    float-to-int v12, v12

    iput v12, v7, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->distance:I

    .line 48
    iget v12, v7, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->runstep:I

    int-to-long v12, v12

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/smart/wristband/models/database/entity/User;->getHeight()Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v12, v13, v14}, Lcom/meizu/smart/wristband/models/database/FBDBTools;->getDistanceByStep(JI)F

    move-result v12

    float-to-int v12, v12

    iput v12, v7, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->rundistance:I

    .line 49
    iget v12, v7, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->walkstep:I

    int-to-long v12, v12

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/smart/wristband/models/database/entity/User;->getHeight()Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v12, v13, v14}, Lcom/meizu/smart/wristband/models/database/FBDBTools;->getDistanceByStep(JI)F

    move-result v12

    float-to-int v12, v12

    iput v12, v7, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->walkdistance:I

    .line 50
    iget v12, v7, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->aerobicsstep:I

    int-to-long v12, v12

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/smart/wristband/models/database/entity/User;->getHeight()Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v12, v13, v14}, Lcom/meizu/smart/wristband/models/database/FBDBTools;->getDistanceByStep(JI)F

    move-result v12

    float-to-int v12, v12

    iput v12, v7, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->aerobicsdistance:I

    .line 52
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/smart/wristband/models/database/entity/User;->getWeight()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-double v12, v12

    iget v14, v7, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->distance:I

    int-to-float v14, v14

    invoke-static {v12, v13, v14}, Lcom/meizu/smart/wristband/models/database/FBDBTools;->getCalorie(DF)F

    move-result v12

    float-to-int v12, v12

    int-to-float v12, v12

    iput v12, v7, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->calorie:F

    .line 53
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/smart/wristband/models/database/entity/User;->getWeight()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-double v12, v12

    iget v14, v7, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->rundistance:I

    int-to-float v14, v14

    invoke-static {v12, v13, v14}, Lcom/meizu/smart/wristband/models/database/FBDBTools;->getCalorie(DF)F

    move-result v12

    float-to-int v12, v12

    int-to-float v12, v12

    iput v12, v7, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->runcalorie:F

    .line 54
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/smart/wristband/models/database/entity/User;->getWeight()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-double v12, v12

    iget v14, v7, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->walkdistance:I

    int-to-float v14, v14

    invoke-static {v12, v13, v14}, Lcom/meizu/smart/wristband/models/database/FBDBTools;->getCalorie(DF)F

    move-result v12

    float-to-int v12, v12

    int-to-float v12, v12

    iput v12, v7, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->walkcalorie:F

    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/smart/wristband/models/database/entity/User;->getWeight()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-double v12, v12

    iget v14, v7, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->aerobicsdistance:I

    int-to-float v14, v14

    invoke-static {v12, v13, v14}, Lcom/meizu/smart/wristband/models/database/FBDBTools;->getCalorie(DF)F

    move-result v12

    float-to-int v12, v12

    int-to-float v12, v12

    iput v12, v7, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->aerobicscalorie:F

    .line 57
    return-object v7
.end method
