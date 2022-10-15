.class public Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/AutoDetectSleepAnalyse;
.super Ljava/lang/Object;
.source "AutoDetectSleepAnalyse.java"


# static fields
.field private static final DEEP_SLEEP_CODE:I = 0xc

.field private static final LIGHT_SLEEP_CODE:I = 0xb

.field private static final WAKEUP_CODE:I = 0x0

.field private static deeptimecontinue_day:I = 0x0

.field private static deeptimecontinue_night:I = 0x0

.field private static final fMinPercLightSleep:D = 0.2

.field private static sitThresh:J

.field private static takeThresh:J

.field private static wakeupThresh:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    const-wide/16 v0, 0x1e

    sput-wide v0, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/AutoDetectSleepAnalyse;->wakeupThresh:J

    .line 22
    const-wide/16 v0, 0x14

    sput-wide v0, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/AutoDetectSleepAnalyse;->sitThresh:J

    .line 23
    const-wide/16 v0, 0x3c

    sput-wide v0, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/AutoDetectSleepAnalyse;->takeThresh:J

    .line 25
    const/16 v0, 0xa0

    sput v0, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/AutoDetectSleepAnalyse;->deeptimecontinue_night:I

    .line 26
    const/16 v0, 0x32

    sput v0, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/AutoDetectSleepAnalyse;->deeptimecontinue_day:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ConvertStateCode(I)Ljava/lang/String;
    .locals 1
    .param p0, "oldCode"    # I

    .prologue
    .line 362
    sparse-switch p0, :sswitch_data_0

    .line 373
    const-string v0, "0"

    .line 377
    .local v0, "newCode":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 364
    .end local v0    # "newCode":Ljava/lang/String;
    :sswitch_0
    const-string v0, "3"

    .line 365
    .restart local v0    # "newCode":Ljava/lang/String;
    goto :goto_0

    .line 367
    .end local v0    # "newCode":Ljava/lang/String;
    :sswitch_1
    const-string v0, "2"

    .line 368
    .restart local v0    # "newCode":Ljava/lang/String;
    goto :goto_0

    .line 370
    .end local v0    # "newCode":Ljava/lang/String;
    :sswitch_2
    const-string v0, "0"

    .line 371
    .restart local v0    # "newCode":Ljava/lang/String;
    goto :goto_0

    .line 362
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0xb -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method public static analyse(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 44
    .param p0, "timeZone"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/SleepState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "originalState":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;>;"
    .local p2, "resList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;>;"
    .local p3, "sitList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/newwork/response/SleepState;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v39

    if-nez v39, :cond_1

    .line 358
    :cond_0
    return-void

    .line 40
    :cond_1
    new-instance v39, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/AutoDetectSleepAnalyse$1;

    invoke-direct/range {v39 .. v39}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/AutoDetectSleepAnalyse$1;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 46
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v39

    add-int/lit8 v17, v39, -0x1

    .line 47
    .local v17, "lastIdx":I
    const/4 v7, 0x0

    .local v7, "curIdx":I
    :goto_0
    move/from16 v0, v17

    if-gt v7, v0, :cond_14

    .line 49
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;

    .line 50
    .local v32, "state":Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;
    const/16 v39, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->setIsValid(I)V

    .line 51
    invoke-virtual/range {v32 .. v32}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStartTime()Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x0

    const/16 v41, 0xc

    invoke-virtual/range {v39 .. v41}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->setStartTime(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {v32 .. v32}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getEndTime()Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x0

    const/16 v41, 0xc

    invoke-virtual/range {v39 .. v41}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->setEndTime(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {v32 .. v32}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStateNum()I

    move-result v39

    invoke-virtual/range {v32 .. v32}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStateCyc()I

    move-result v40

    mul-int v39, v39, v40

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v40, v0

    sget-wide v42, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/AutoDetectSleepAnalyse;->sitThresh:J

    cmp-long v39, v40, v42

    if-ltz v39, :cond_e

    .line 54
    invoke-virtual/range {v32 .. v32}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStateNum()I

    move-result v39

    invoke-virtual/range {v32 .. v32}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStateCyc()I

    move-result v40

    mul-int v39, v39, v40

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v40, v0

    sget-wide v42, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/AutoDetectSleepAnalyse;->takeThresh:J

    cmp-long v39, v40, v42

    if-ltz v39, :cond_d

    .line 55
    const/16 v19, 0x0

    .line 56
    .local v19, "lightnum":I
    const/16 v35, 0x1

    .local v35, "state_idx":I
    :goto_1
    invoke-virtual/range {v32 .. v32}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStateNum()I

    move-result v39

    move/from16 v0, v35

    move/from16 v1, v39

    if-ge v0, v1, :cond_3

    .line 57
    invoke-virtual/range {v32 .. v32}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStateCode()Ljava/util/List;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/Integer;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v39

    const/16 v40, 0xb

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_2

    .line 58
    add-int/lit8 v19, v19, 0x1

    .line 56
    :cond_2
    add-int/lit8 v35, v35, 0x1

    goto :goto_1

    .line 62
    :cond_3
    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v40, v0

    invoke-virtual/range {v32 .. v32}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStateNum()I

    move-result v39

    move/from16 v0, v39

    int-to-double v0, v0

    move-wide/from16 v42, v0

    div-double v14, v40, v42

    .line 64
    .local v14, "fperc":D
    const-wide v40, 0x3fc999999999999aL    # 0.2

    cmpl-double v39, v14, v40

    if-ltz v39, :cond_5

    .line 65
    const/16 v39, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->setIsValid(I)V

    .line 73
    :goto_2
    const/16 v20, 0x0

    .line 74
    .local v20, "maxdeep":I
    const/4 v9, 0x0

    .line 75
    .local v9, "deepcontinue":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    invoke-virtual/range {v32 .. v32}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStateNum()I

    move-result v39

    move/from16 v0, v39

    if-ge v11, v0, :cond_8

    .line 76
    invoke-virtual/range {v32 .. v32}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStateCode()Ljava/util/List;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/Integer;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v39

    const/16 v40, 0xc

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_6

    .line 77
    add-int/lit8 v9, v9, 0x1

    .line 86
    :goto_4
    invoke-virtual/range {v32 .. v32}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStateNum()I

    move-result v39

    add-int/lit8 v39, v39, -0x1

    move/from16 v0, v39

    if-ne v11, v0, :cond_4

    move/from16 v0, v20

    if-le v9, v0, :cond_4

    .line 87
    move/from16 v20, v9

    .line 75
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 67
    .end local v9    # "deepcontinue":I
    .end local v11    # "i":I
    .end local v20    # "maxdeep":I
    :cond_5
    const/16 v39, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->setIsValid(I)V

    goto :goto_2

    .line 79
    .restart local v9    # "deepcontinue":I
    .restart local v11    # "i":I
    .restart local v20    # "maxdeep":I
    :cond_6
    move/from16 v0, v20

    if-le v9, v0, :cond_7

    .line 80
    move/from16 v20, v9

    .line 82
    :cond_7
    const/4 v9, 0x0

    goto :goto_4

    .line 91
    :cond_8
    sget v10, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/AutoDetectSleepAnalyse;->deeptimecontinue_day:I

    .line 92
    .local v10, "deeptimecontinue":I
    invoke-virtual/range {v32 .. v32}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getEndTime()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/utils/Gettime;->ConvertUTC2LocaleMS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x8

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v39

    const-string v40, "1100"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v39

    if-ltz v39, :cond_9

    .line 93
    invoke-virtual/range {v32 .. v32}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getEndTime()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/utils/Gettime;->ConvertUTC2LocaleMS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x8

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v39

    const-string v40, "2300"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v39

    if-lez v39, :cond_a

    .line 94
    :cond_9
    sget v10, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/AutoDetectSleepAnalyse;->deeptimecontinue_night:I

    .line 97
    :cond_a
    invoke-virtual/range {v32 .. v32}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStateCyc()I

    move-result v39

    mul-int v39, v39, v20

    move/from16 v0, v39

    if-lt v0, v10, :cond_b

    .line 98
    const/16 v39, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->setIsValid(I)V

    .line 123
    .end local v9    # "deepcontinue":I
    .end local v10    # "deeptimecontinue":I
    .end local v11    # "i":I
    .end local v14    # "fperc":D
    .end local v19    # "lightnum":I
    .end local v20    # "maxdeep":I
    .end local v35    # "state_idx":I
    :cond_b
    :goto_5
    invoke-virtual/range {v32 .. v32}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getIsValid()I

    move-result v39

    const/16 v40, 0x1

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_c

    .line 125
    invoke-virtual/range {v32 .. v32}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getEndTime()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v32 .. v32}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStartTime()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v39

    if-gtz v39, :cond_f

    .line 126
    const/16 v39, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->setIsValid(I)V

    .line 47
    :cond_c
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 101
    :cond_d
    const/16 v39, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->setIsValid(I)V

    goto :goto_5

    .line 113
    :cond_e
    invoke-virtual/range {v32 .. v32}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getEndTime()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v32 .. v32}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStartTime()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v39

    if-lez v39, :cond_b

    .line 114
    new-instance v28, Lcom/meizu/smart/wristband/models/newwork/response/SleepState;

    invoke-direct/range {v28 .. v28}, Lcom/meizu/smart/wristband/models/newwork/response/SleepState;-><init>()V

    .line 115
    .local v28, "sitState":Lcom/meizu/smart/wristband/models/newwork/response/SleepState;
    invoke-virtual/range {v32 .. v32}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStartTime()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v28

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/newwork/response/SleepState;->setStartTime(Ljava/lang/String;)V

    .line 116
    invoke-virtual/range {v32 .. v32}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getEndTime()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v28

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/newwork/response/SleepState;->setEndTime(Ljava/lang/String;)V

    .line 117
    new-instance v39, Ljava/lang/Integer;

    const/16 v40, 0x3

    invoke-direct/range {v39 .. v40}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v28

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/newwork/response/SleepState;->setStateCode(Ljava/lang/String;)V

    .line 119
    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 129
    .end local v28    # "sitState":Lcom/meizu/smart/wristband/models/newwork/response/SleepState;
    :cond_f
    invoke-virtual/range {v32 .. v32}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getEndTime()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v32 .. v32}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStartTime()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lcom/meizu/smart/wristband/utils/Gettime;->difftime(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v40

    const-wide/16 v42, 0x3c

    div-long v36, v40, v42

    .line 130
    .local v36, "totalInterval":J
    move-wide/from16 v0, v36

    long-to-double v0, v0

    move-wide/from16 v40, v0

    invoke-virtual/range {v32 .. v32}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStateCyc()I

    move-result v39

    move/from16 v0, v39

    int-to-double v0, v0

    move-wide/from16 v42, v0

    div-double v40, v40, v42

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v40

    move-wide/from16 v0, v40

    double-to-int v0, v0

    move/from16 v38, v0

    .line 131
    .local v38, "totalNum":I
    invoke-virtual/range {v32 .. v32}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStateNum()I

    move-result v39

    move/from16 v0, v38

    move/from16 v1, v39

    if-lt v0, v1, :cond_10

    invoke-virtual/range {v32 .. v32}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStateNum()I

    move-result v39

    add-int/lit8 v39, v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-le v0, v1, :cond_11

    .line 132
    :cond_10
    const/16 v39, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->setIsValid(I)V

    goto/16 :goto_6

    .line 134
    :cond_11
    new-instance v33, Ljava/util/ArrayList;

    invoke-virtual/range {v32 .. v32}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStateNum()I

    move-result v39

    move-object/from16 v0, v33

    move/from16 v1, v39

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 135
    .local v33, "stateInterval":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v35, 0x0

    .restart local v35    # "state_idx":I
    :goto_7
    invoke-virtual/range {v32 .. v32}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStateNum()I

    move-result v39

    move/from16 v0, v35

    move/from16 v1, v39

    if-ge v0, v1, :cond_12

    .line 136
    const/16 v39, 0x0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v33

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 v35, v35, 0x1

    goto :goto_7

    .line 138
    :cond_12
    invoke-virtual/range {v32 .. v33}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->setStateInterval(Ljava/util/List;)V

    .line 139
    const/16 v35, 0x0

    :goto_8
    invoke-virtual/range {v32 .. v32}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStateNum()I

    move-result v39

    move/from16 v0, v35

    move/from16 v1, v39

    if-ge v0, v1, :cond_c

    .line 140
    invoke-virtual/range {v32 .. v32}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStateNum()I

    move-result v39

    add-int/lit8 v39, v39, -0x1

    move/from16 v0, v35

    move/from16 v1, v39

    if-ne v0, v1, :cond_13

    .line 141
    invoke-virtual/range {v32 .. v32}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStateInterval()Ljava/util/List;

    move-result-object v39

    move-wide/from16 v0, v36

    long-to-int v0, v0

    move/from16 v40, v0

    invoke-virtual/range {v32 .. v32}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStateNum()I

    move-result v41

    add-int/lit8 v41, v41, -0x1

    invoke-virtual/range {v32 .. v32}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStateCyc()I

    move-result v42

    mul-int v41, v41, v42

    sub-int v40, v40, v41

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    move-object/from16 v0, v39

    move/from16 v1, v35

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 139
    :goto_9
    add-int/lit8 v35, v35, 0x1

    goto :goto_8

    .line 143
    :cond_13
    invoke-virtual/range {v32 .. v32}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStateInterval()Ljava/util/List;

    move-result-object v39

    invoke-virtual/range {v32 .. v32}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStateCyc()I

    move-result v40

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    move-object/from16 v0, v39

    move/from16 v1, v35

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 153
    .end local v32    # "state":Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;
    .end local v33    # "stateInterval":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v35    # "state_idx":I
    .end local v36    # "totalInterval":J
    .end local v38    # "totalNum":I
    :cond_14
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v34, "stateResult":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v39

    const/16 v40, 0x1

    move/from16 v0, v39

    move/from16 v1, v40

    if-le v0, v1, :cond_22

    .line 155
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_a
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v39

    add-int/lit8 v39, v39, -0x1

    move/from16 v0, v39

    if-ge v11, v0, :cond_20

    .line 157
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;

    invoke-virtual/range {v39 .. v39}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getIsValid()I

    move-result v39

    const/16 v40, 0x1

    move/from16 v0, v39

    move/from16 v1, v40

    if-eq v0, v1, :cond_16

    .line 155
    :cond_15
    :goto_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    .line 160
    :cond_16
    move/from16 v24, v11

    .line 161
    .local v24, "nextidx":I
    add-int/lit8 v16, v11, 0x1

    .local v16, "j":I
    :goto_c
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v39

    move/from16 v0, v16

    move/from16 v1, v39

    if-ge v0, v1, :cond_17

    .line 162
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;

    invoke-virtual/range {v39 .. v39}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getIsValid()I

    move-result v39

    const/16 v40, 0x1

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_18

    .line 163
    move/from16 v24, v16

    .line 169
    :cond_17
    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "=======into=====AutoDetectSleepAnalyse preState==="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, ",nextState="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 170
    move/from16 v0, v24

    if-eq v0, v11, :cond_15

    .line 172
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;

    .line 173
    .local v27, "preState":Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;

    .line 174
    .local v23, "nextState":Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;
    invoke-virtual/range {v27 .. v27}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getIsValid()I

    move-result v39

    const/16 v40, 0x1

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_15

    invoke-virtual/range {v23 .. v23}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getIsValid()I

    move-result v39

    const/16 v40, 0x1

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_15

    .line 177
    invoke-virtual/range {v23 .. v23}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStartTime()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v27 .. v27}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStartTime()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v39

    if-gtz v39, :cond_19

    .line 178
    const/16 v39, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->setIsValid(I)V

    .line 179
    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "=======into=====AutoDetectSleepAnalyse preState==="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, ",nextState="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 161
    .end local v23    # "nextState":Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;
    .end local v27    # "preState":Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;
    :cond_18
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_c

    .line 184
    .restart local v23    # "nextState":Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;
    .restart local v27    # "preState":Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;
    :cond_19
    invoke-virtual/range {v23 .. v23}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStartTime()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v27 .. v27}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getEndTime()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v39

    if-gtz v39, :cond_1c

    .line 185
    invoke-virtual/range {v27 .. v27}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getEndTime()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v23 .. v23}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStartTime()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lcom/meizu/smart/wristband/utils/Gettime;->difftime(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v40

    move-wide/from16 v0, v40

    long-to-int v0, v0

    move/from16 v39, v0

    div-int/lit8 v30, v39, 0x3c

    .line 186
    .local v30, "sleepInterval":I
    invoke-virtual/range {v23 .. v23}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStateCyc()I

    move-result v39

    div-int v22, v30, v39

    .line 188
    .local v22, "nextBeginIdx":I
    move/from16 v16, v22

    :goto_d
    invoke-virtual/range {v23 .. v23}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStateNum()I

    move-result v39

    move/from16 v0, v16

    move/from16 v1, v39

    if-ge v0, v1, :cond_1b

    .line 189
    invoke-virtual/range {v27 .. v27}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStateCode()Ljava/util/List;

    move-result-object v39

    invoke-virtual/range {v23 .. v23}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStateCode()Ljava/util/List;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v40

    invoke-interface/range {v39 .. v40}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    move/from16 v0, v16

    move/from16 v1, v22

    if-ne v0, v1, :cond_1a

    .line 191
    invoke-virtual/range {v27 .. v27}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStateInterval()Ljava/util/List;

    move-result-object v39

    invoke-virtual/range {v23 .. v23}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStateCyc()I

    move-result v40

    invoke-virtual/range {v23 .. v23}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStateCyc()I

    move-result v41

    rem-int v41, v30, v41

    sub-int v40, v40, v41

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-interface/range {v39 .. v40}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    :goto_e
    invoke-virtual/range {v27 .. v27}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStateNum()I

    move-result v39

    add-int/lit8 v39, v39, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->setStateNum(I)V

    .line 188
    add-int/lit8 v16, v16, 0x1

    goto :goto_d

    .line 193
    :cond_1a
    invoke-virtual/range {v27 .. v27}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStateInterval()Ljava/util/List;

    move-result-object v39

    invoke-virtual/range {v23 .. v23}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStateInterval()Ljava/util/List;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v40

    invoke-interface/range {v39 .. v40}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 199
    :cond_1b
    invoke-virtual/range {v27 .. v27}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStartTime()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v23

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->setStartTime(Ljava/lang/String;)V

    .line 200
    invoke-virtual/range {v27 .. v27}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStateCode()Ljava/util/List;

    move-result-object v39

    move-object/from16 v0, v23

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->setStateCode(Ljava/util/List;)V

    .line 201
    invoke-virtual/range {v27 .. v27}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStateInterval()Ljava/util/List;

    move-result-object v39

    move-object/from16 v0, v23

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->setStateInterval(Ljava/util/List;)V

    .line 202
    invoke-virtual/range {v27 .. v27}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStateNum()I

    move-result v39

    move-object/from16 v0, v23

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->setStateNum(I)V

    .line 205
    const/16 v39, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->setIsValid(I)V

    .line 206
    const/16 v39, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->setStateCode(Ljava/util/List;)V

    .line 207
    const/16 v39, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->setStateInterval(Ljava/util/List;)V

    .line 208
    const/16 v39, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->setStateNum(I)V

    goto/16 :goto_b

    .line 211
    .end local v22    # "nextBeginIdx":I
    .end local v30    # "sleepInterval":I
    :cond_1c
    invoke-virtual/range {v23 .. v23}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStartTime()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v27 .. v27}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getEndTime()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lcom/meizu/smart/wristband/utils/Gettime;->difftime(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v40

    move-wide/from16 v0, v40

    long-to-int v0, v0

    move/from16 v39, v0

    div-int/lit8 v30, v39, 0x3c

    .line 214
    .restart local v30    # "sleepInterval":I
    invoke-virtual/range {v27 .. v27}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getEndTime()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v27 .. v27}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStartTime()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lcom/meizu/smart/wristband/utils/Gettime;->difftime(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v40

    move-wide/from16 v0, v40

    long-to-int v0, v0

    move/from16 v39, v0

    div-int/lit8 v26, v39, 0x3c

    .line 216
    .local v26, "preSleepTime":I
    invoke-virtual/range {v23 .. v23}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getEndTime()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v23 .. v23}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStartTime()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lcom/meizu/smart/wristband/utils/Gettime;->difftime(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v40

    move-wide/from16 v0, v40

    long-to-int v0, v0

    move/from16 v39, v0

    div-int/lit8 v6, v39, 0x3c

    .line 225
    .local v6, "behindSleepTime":I
    const/16 v39, 0x0

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 228
    .local v4, "bCombine":Ljava/lang/Boolean;
    invoke-virtual/range {v27 .. v27}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getEndTime()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/utils/Gettime;->ConvertUTC2LocaleMS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x8

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v39

    const-string v40, "0000"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v39

    if-ltz v39, :cond_1e

    .line 229
    invoke-virtual/range {v27 .. v27}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getEndTime()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/utils/Gettime;->ConvertUTC2LocaleMS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x8

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v39

    const-string v40, "0700"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v39

    if-gtz v39, :cond_1e

    .line 230
    const-wide/16 v40, 0x3c

    sput-wide v40, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/AutoDetectSleepAnalyse;->wakeupThresh:J

    .line 231
    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v40, v0

    sget-wide v42, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/AutoDetectSleepAnalyse;->wakeupThresh:J

    cmp-long v39, v40, v42

    if-gtz v39, :cond_1d

    .line 232
    const/16 v39, 0x1

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 249
    :cond_1d
    :goto_f
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v39

    if-eqz v39, :cond_15

    .line 251
    invoke-virtual/range {v27 .. v27}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStateCode()Ljava/util/List;

    move-result-object v39

    const/16 v40, 0x0

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-interface/range {v39 .. v40}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    invoke-virtual/range {v27 .. v27}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStateInterval()Ljava/util/List;

    move-result-object v39

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-interface/range {v39 .. v40}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    invoke-virtual/range {v27 .. v27}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStateNum()I

    move-result v39

    add-int/lit8 v39, v39, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->setStateNum(I)V

    .line 256
    invoke-virtual/range {v27 .. v27}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStateCode()Ljava/util/List;

    move-result-object v39

    invoke-virtual/range {v23 .. v23}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStateCode()Ljava/util/List;

    move-result-object v40

    invoke-interface/range {v39 .. v40}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 257
    invoke-virtual/range {v27 .. v27}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStateInterval()Ljava/util/List;

    move-result-object v39

    invoke-virtual/range {v23 .. v23}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStateInterval()Ljava/util/List;

    move-result-object v40

    invoke-interface/range {v39 .. v40}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 258
    invoke-virtual/range {v27 .. v27}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStateNum()I

    move-result v39

    invoke-virtual/range {v23 .. v23}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStateNum()I

    move-result v40

    add-int v39, v39, v40

    move-object/from16 v0, v27

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->setStateNum(I)V

    .line 261
    invoke-virtual/range {v27 .. v27}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStartTime()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v23

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->setStartTime(Ljava/lang/String;)V

    .line 262
    invoke-virtual/range {v27 .. v27}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStateCode()Ljava/util/List;

    move-result-object v39

    move-object/from16 v0, v23

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->setStateCode(Ljava/util/List;)V

    .line 263
    invoke-virtual/range {v27 .. v27}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStateInterval()Ljava/util/List;

    move-result-object v39

    move-object/from16 v0, v23

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->setStateInterval(Ljava/util/List;)V

    .line 264
    invoke-virtual/range {v27 .. v27}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStateNum()I

    move-result v39

    move-object/from16 v0, v23

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->setStateNum(I)V

    .line 268
    const/16 v39, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->setIsValid(I)V

    .line 269
    const/16 v39, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->setStateCode(Ljava/util/List;)V

    .line 270
    const/16 v39, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->setStateInterval(Ljava/util/List;)V

    .line 271
    const/16 v39, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->setStateNum(I)V

    goto/16 :goto_b

    .line 234
    :cond_1e
    invoke-virtual/range {v27 .. v27}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getEndTime()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/utils/Gettime;->ConvertUTC2LocaleMS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x8

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v39

    const-string v40, "1200"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v39

    if-gtz v39, :cond_1f

    .line 235
    invoke-virtual/range {v27 .. v27}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getEndTime()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/utils/Gettime;->ConvertUTC2LocaleMS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x8

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v39

    const-string v40, "0700"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v39

    if-lez v39, :cond_1f

    .line 237
    const-wide/16 v40, 0x1e

    sput-wide v40, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/AutoDetectSleepAnalyse;->wakeupThresh:J

    .line 238
    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v40, v0

    sget-wide v42, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/AutoDetectSleepAnalyse;->wakeupThresh:J

    cmp-long v39, v40, v42

    if-gtz v39, :cond_1d

    move/from16 v0, v30

    if-ge v0, v6, :cond_1d

    .line 239
    const/16 v39, 0x1

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto/16 :goto_f

    .line 243
    :cond_1f
    const-wide/16 v40, 0x1e

    sput-wide v40, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/AutoDetectSleepAnalyse;->wakeupThresh:J

    .line 244
    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v40, v0

    sget-wide v42, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/AutoDetectSleepAnalyse;->wakeupThresh:J

    cmp-long v39, v40, v42

    if-gtz v39, :cond_1d

    move/from16 v0, v30

    move/from16 v1, v26

    if-ge v0, v1, :cond_1d

    .line 245
    const/16 v39, 0x1

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto/16 :goto_f

    .line 278
    .end local v4    # "bCombine":Ljava/lang/Boolean;
    .end local v6    # "behindSleepTime":I
    .end local v16    # "j":I
    .end local v23    # "nextState":Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;
    .end local v24    # "nextidx":I
    .end local v26    # "preSleepTime":I
    .end local v27    # "preState":Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;
    .end local v30    # "sleepInterval":I
    :cond_20
    const/4 v11, 0x0

    :goto_10
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v39

    move/from16 v0, v39

    if-ge v11, v0, :cond_23

    .line 279
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;

    invoke-virtual/range {v39 .. v39}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getIsValid()I

    move-result v39

    const/16 v40, 0x1

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_21

    .line 280
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    move-object/from16 v0, v34

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    :cond_21
    add-int/lit8 v11, v11, 0x1

    goto :goto_10

    .line 285
    .end local v11    # "i":I
    :cond_22
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;

    invoke-virtual/range {v39 .. v39}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getIsValid()I

    move-result v39

    const/16 v40, 0x1

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_23

    .line 286
    const/16 v39, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    move-object/from16 v0, v34

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    :cond_23
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_11
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v39

    move/from16 v0, v39

    if-ge v11, v0, :cond_28

    .line 292
    move-object/from16 v0, v34

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;

    invoke-virtual/range {v39 .. v39}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getIsValid()I

    move-result v39

    const/16 v40, 0x1

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_26

    .line 293
    const/16 v18, 0x0

    .line 294
    .local v18, "lightSleepNum":I
    const/16 v16, 0x1

    .restart local v16    # "j":I
    :goto_12
    move-object/from16 v0, v34

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;

    invoke-virtual/range {v39 .. v39}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStateNum()I

    move-result v39

    move/from16 v0, v16

    move/from16 v1, v39

    if-ge v0, v1, :cond_25

    .line 295
    move-object/from16 v0, v34

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;

    invoke-virtual/range {v39 .. v39}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStateCode()Ljava/util/List;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/Integer;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v39

    const/16 v40, 0xb

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_24

    .line 296
    add-int/lit8 v18, v18, 0x1

    .line 294
    :cond_24
    add-int/lit8 v16, v16, 0x1

    goto :goto_12

    .line 301
    :cond_25
    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v40, v0

    move-object/from16 v0, v34

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;

    invoke-virtual/range {v39 .. v39}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStateNum()I

    move-result v39

    move/from16 v0, v39

    int-to-double v0, v0

    move-wide/from16 v42, v0

    div-double v12, v40, v42

    .line 304
    .local v12, "fPerc":D
    const-wide v40, 0x3fc999999999999aL    # 0.2

    cmpl-double v39, v12, v40

    if-ltz v39, :cond_27

    .line 305
    move-object/from16 v0, v34

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;

    const/16 v40, 0x1

    invoke-virtual/range {v39 .. v40}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->setIsValid(I)V

    .line 291
    .end local v12    # "fPerc":D
    .end local v16    # "j":I
    .end local v18    # "lightSleepNum":I
    :cond_26
    :goto_13
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_11

    .line 307
    .restart local v12    # "fPerc":D
    .restart local v16    # "j":I
    .restart local v18    # "lightSleepNum":I
    :cond_27
    move-object/from16 v0, v34

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;

    const/16 v40, 0x0

    invoke-virtual/range {v39 .. v40}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->setIsValid(I)V

    goto :goto_13

    .line 313
    .end local v12    # "fPerc":D
    .end local v16    # "j":I
    .end local v18    # "lightSleepNum":I
    :cond_28
    const/4 v11, 0x0

    :goto_14
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v39

    move/from16 v0, v39

    if-ge v11, v0, :cond_0

    .line 314
    move-object/from16 v0, v34

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;

    .line 316
    .local v25, "ostate":Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;
    invoke-virtual/range {v25 .. v25}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getIsValid()I

    move-result v39

    const/16 v40, 0x1

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_29

    invoke-virtual/range {v25 .. v25}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStateNum()I

    move-result v39

    if-nez v39, :cond_2a

    .line 313
    :cond_29
    :goto_15
    add-int/lit8 v11, v11, 0x1

    goto :goto_14

    .line 320
    :cond_2a
    new-instance v29, Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;

    invoke-direct/range {v29 .. v29}, Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;-><init>()V

    .line 321
    .local v29, "sleep":Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;
    invoke-virtual/range {v25 .. v25}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getEndTime()Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x0

    const/16 v41, 0x8

    invoke-virtual/range {v39 .. v41}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v29

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;->setGdate(Ljava/lang/String;)V

    .line 322
    invoke-virtual/range {v25 .. v25}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getEndTime()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v29

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;->setWakeupTime(Ljava/lang/String;)V

    .line 323
    invoke-virtual/range {v25 .. v25}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStartTime()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v29

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;->setSleepTime(Ljava/lang/String;)V

    .line 325
    invoke-virtual/range {v25 .. v25}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStartTime()Ljava/lang/String;

    move-result-object v31

    .line 326
    .local v31, "startTime":Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStateCode()Ljava/util/List;

    move-result-object v39

    const/16 v40, 0x0

    invoke-interface/range {v39 .. v40}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/Integer;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v39

    invoke-static/range {v39 .. v39}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/AutoDetectSleepAnalyse;->ConvertStateCode(I)Ljava/lang/String;

    move-result-object v8

    .line 327
    .local v8, "curStateCode":Ljava/lang/String;
    const/4 v5, 0x0

    .line 329
    .local v5, "begIdx":I
    new-instance v32, Lcom/meizu/smart/wristband/models/newwork/response/SleepState;

    invoke-direct/range {v32 .. v32}, Lcom/meizu/smart/wristband/models/newwork/response/SleepState;-><init>()V

    .line 330
    .local v32, "state":Lcom/meizu/smart/wristband/models/newwork/response/SleepState;
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/newwork/response/SleepState;->setStartTime(Ljava/lang/String;)V

    .line 331
    invoke-virtual/range {v25 .. v25}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStateInterval()Ljava/util/List;

    move-result-object v39

    const/16 v40, 0x0

    invoke-interface/range {v39 .. v40}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/Integer;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v39

    move-object/from16 v0, v31

    move/from16 v1, v39

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/utils/Gettime;->timeAddMin(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/newwork/response/SleepState;->setEndTime(Ljava/lang/String;)V

    .line 332
    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Lcom/meizu/smart/wristband/models/newwork/response/SleepState;->setStateCode(Ljava/lang/String;)V

    .line 333
    const/16 v16, 0x0

    .line 334
    .restart local v16    # "j":I
    add-int/lit8 v16, v5, 0x1

    :goto_16
    invoke-virtual/range {v25 .. v25}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStateNum()I

    move-result v39

    move/from16 v0, v16

    move/from16 v1, v39

    if-ge v0, v1, :cond_2c

    .line 335
    invoke-virtual/range {v25 .. v25}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStateCode()Ljava/util/List;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/Integer;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v39

    invoke-static/range {v39 .. v39}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/AutoDetectSleepAnalyse;->ConvertStateCode(I)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v39

    if-eqz v39, :cond_2b

    .line 336
    invoke-virtual/range {v32 .. v32}, Lcom/meizu/smart/wristband/models/newwork/response/SleepState;->getEndTime()Ljava/lang/String;

    move-result-object v31

    .line 337
    invoke-virtual/range {v25 .. v25}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStateCode()Ljava/util/List;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/Integer;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v39

    invoke-static/range {v39 .. v39}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/AutoDetectSleepAnalyse;->ConvertStateCode(I)Ljava/lang/String;

    move-result-object v8

    .line 338
    move/from16 v5, v16

    .line 339
    invoke-virtual/range {v29 .. v29}, Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;->getSleepState()Ljava/util/List;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    new-instance v21, Lcom/meizu/smart/wristband/models/newwork/response/SleepState;

    invoke-direct/range {v21 .. v21}, Lcom/meizu/smart/wristband/models/newwork/response/SleepState;-><init>()V

    .line 342
    .local v21, "new_state":Lcom/meizu/smart/wristband/models/newwork/response/SleepState;
    invoke-virtual/range {v32 .. v32}, Lcom/meizu/smart/wristband/models/newwork/response/SleepState;->getEndTime()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v21

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/newwork/response/SleepState;->setStartTime(Ljava/lang/String;)V

    .line 343
    invoke-virtual/range {v32 .. v32}, Lcom/meizu/smart/wristband/models/newwork/response/SleepState;->getEndTime()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v25 .. v25}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStateInterval()Ljava/util/List;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/Integer;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v39

    move-object/from16 v0, v40

    move/from16 v1, v39

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/utils/Gettime;->timeAddMin(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v21

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/newwork/response/SleepState;->setEndTime(Ljava/lang/String;)V

    .line 344
    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lcom/meizu/smart/wristband/models/newwork/response/SleepState;->setStateCode(Ljava/lang/String;)V

    .line 345
    move-object/from16 v32, v21

    .line 334
    .end local v21    # "new_state":Lcom/meizu/smart/wristband/models/newwork/response/SleepState;
    :goto_17
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_16

    .line 347
    :cond_2b
    invoke-virtual/range {v32 .. v32}, Lcom/meizu/smart/wristband/models/newwork/response/SleepState;->getEndTime()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v25 .. v25}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getStateInterval()Ljava/util/List;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/Integer;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v39

    move-object/from16 v0, v40

    move/from16 v1, v39

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/utils/Gettime;->timeAddMin(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/newwork/response/SleepState;->setEndTime(Ljava/lang/String;)V

    goto :goto_17

    .line 351
    :cond_2c
    move/from16 v0, v16

    if-le v0, v5, :cond_2d

    .line 352
    invoke-virtual/range {v25 .. v25}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getEndTime()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/newwork/response/SleepState;->setEndTime(Ljava/lang/String;)V

    .line 353
    invoke-virtual/range {v29 .. v29}, Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;->getSleepState()Ljava/util/List;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    :cond_2d
    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_15
.end method
