.class public Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity;
.super Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;
.source "HistoryActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$ItemEntity;
    }
.end annotation


# static fields
.field public static final KEY_REALSPORT_ID:Ljava/lang/String; = "KEY_REALSPORT_ID"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private myListView:Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;

.field private total_calorie:Landroid/widget/TextView;

.field private total_count:Landroid/widget/TextView;

.field private total_distance:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;-><init>()V

    .line 204
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity;->lambda$setListener$302(Ljava/lang/Void;)V

    return-void
.end method

.method private createData()Ljava/util/List;
    .locals 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$ItemEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0c0001

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v30

    .line 88
    .local v30, "stringArray":[Ljava/lang/String;
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v21, "list":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$ItemEntity;>;"
    invoke-static/range {p0 .. p0}, Lcom/meizu/smart/wristband/servers/DBSportApi;->getAllRunSport(Landroid/content/Context;)Ljava/util/List;

    move-result-object v29

    .line 98
    .local v29, "sports":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/SportReal;>;"
    if-eqz v29, :cond_0

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 99
    :cond_0
    const/16 v21, 0x0

    .line 191
    .end local v21    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$ItemEntity;>;"
    :cond_1
    return-object v21

    .line 102
    .restart local v21    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$ItemEntity;>;"
    :cond_2
    const/16 v19, 0x0

    .line 103
    .local v19, "dis":I
    const/16 v16, 0x0

    .line 104
    .local v16, "carolie":F
    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    .line 106
    .local v25, "mouthDistance":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    .line 107
    .local v27, "sport":Lcom/meizu/smart/wristband/models/database/entity/SportReal;
    invoke-virtual/range {v27 .. v27}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getDistance()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int v19, v19, v8

    .line 108
    invoke-virtual/range {v27 .. v27}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getCalorie()Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    add-float v16, v16, v8

    .line 109
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v17

    .line 110
    .local v17, "cl":Ljava/util/Calendar;
    invoke-virtual/range {v27 .. v27}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getStartTime()Ljava/util/Date;

    move-result-object v8

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 111
    const/4 v8, 0x2

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v24

    .line 112
    .local v24, "mouth":I
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    .line 113
    .local v20, "dis_entry":Ljava/lang/Integer;
    if-nez v20, :cond_4

    .line 114
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    .line 117
    :cond_4
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual/range {v27 .. v27}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getDistance()Ljava/lang/Integer;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v32

    add-int v8, v8, v32

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    .line 118
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    if-gez v19, :cond_5

    .line 121
    const/16 v19, 0x0

    .line 123
    :cond_5
    const/4 v8, 0x0

    cmpg-float v8, v16, v8

    if-gez v8, :cond_3

    .line 124
    const/16 v16, 0x0

    goto :goto_0

    .line 130
    .end local v17    # "cl":Ljava/util/Calendar;
    .end local v20    # "dis_entry":Ljava/lang/Integer;
    .end local v24    # "mouth":I
    .end local v27    # "sport":Lcom/meizu/smart/wristband/models/database/entity/SportReal;
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity;->total_distance:Landroid/widget/TextView;

    move/from16 v0, v19

    int-to-float v8, v0

    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatDistanceToStringForRun(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity;->total_calorie:Landroid/widget/TextView;

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float v8, v16, v8

    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatCalorieToString(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity;->total_count:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, ""

    move-object/from16 v0, v32

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v32

    move/from16 v0, v32

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :goto_1
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    .line 135
    .restart local v27    # "sport":Lcom/meizu/smart/wristband/models/database/entity/SportReal;
    const/4 v6, 0x0

    .line 140
    .local v6, "type":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v17

    .line 141
    .restart local v17    # "cl":Ljava/util/Calendar;
    invoke-virtual/range {v27 .. v27}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getStartTime()Ljava/util/Date;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 142
    const/4 v5, 0x2

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v24

    .line 143
    .restart local v24    # "mouth":I
    const-string v5, "config"

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v8}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v26

    .line 144
    .local v26, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v5, "checkbox_inch_time"

    const/4 v8, 0x1

    move-object/from16 v0, v26

    invoke-interface {v0, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v31

    .line 148
    .local v31, "timeTw":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat0:Ljava/text/SimpleDateFormat;

    invoke-virtual/range {v27 .. v27}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getStartTime()Ljava/util/Date;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v8, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v8, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat0:Ljava/text/SimpleDateFormat;

    invoke-virtual/range {v27 .. v27}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getEndTime()Ljava/util/Date;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v8, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 158
    .local v11, "time":Ljava/lang/String;
    sget-object v5, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat15:Ljava/text/SimpleDateFormat;

    invoke-virtual/range {v27 .. v27}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getStartTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 159
    .local v7, "month":Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getDistance()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatDistanceToStringForRun(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v9

    .line 160
    .local v9, "distance":Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getCalorie()Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatCalorieToString(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v13

    .line 161
    .local v13, "calorie":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v27 .. v27}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getAvgHeart()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 163
    .local v14, "heart":Ljava/lang/String;
    new-instance v18, Ljava/text/DecimalFormat;

    const-string v5, "0.00"

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 164
    .local v18, "df":Ljava/text/DecimalFormat;
    const/4 v12, 0x0

    .line 165
    .local v12, "pace":Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getDistance()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gtz v5, :cond_8

    .line 166
    const-string v12, "0.00"

    .line 175
    :goto_2
    invoke-virtual/range {v27 .. v27}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getEndTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v34

    invoke-virtual/range {v27 .. v27}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getStartTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v36

    sub-long v34, v34, v36

    const-wide/16 v36, 0x3e8

    div-long v34, v34, v36

    const-wide/16 v36, 0x3c

    div-long v34, v34, v36

    move-wide/from16 v0, v34

    long-to-int v0, v0

    move/from16 v23, v0

    .line 176
    .local v23, "min2":I
    if-gez v23, :cond_7

    .line 177
    invoke-virtual/range {v27 .. v27}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getStartTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v34

    invoke-virtual/range {v27 .. v27}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getEndTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v36

    sub-long v34, v34, v36

    const-wide/16 v36, 0x3e8

    div-long v34, v34, v36

    const-wide/16 v36, 0x3c

    div-long v34, v34, v36

    move-wide/from16 v0, v34

    long-to-int v0, v0

    move/from16 v23, v0

    .line 180
    :cond_7
    invoke-virtual/range {v27 .. v27}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getEndTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v34

    invoke-virtual/range {v27 .. v27}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getStartTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v36

    sub-long v34, v34, v36

    const-wide/16 v36, 0x3e8

    div-long v34, v34, v36

    move-wide/from16 v0, v34

    long-to-int v0, v0

    move/from16 v28, v0

    .line 181
    .local v28, "sport_senconds":I
    invoke-static/range {v28 .. v28}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->formatTimeString1(I)Ljava/lang/String;

    move-result-object v15

    .line 184
    .local v15, "sport_long":Ljava/lang/String;
    sget-object v5, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat18:Ljava/text/SimpleDateFormat;

    invoke-virtual/range {v27 .. v27}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getStartTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    .line 185
    .local v10, "summart":Ljava/lang/String;
    new-instance v4, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$ItemEntity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    const/high16 v33, 0x447a0000    # 1000.0f

    div-float v5, v5, v33

    float-to-double v0, v5

    move-wide/from16 v34, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v8, 0x7f08014c

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v15}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$ItemEntity;-><init>(Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .local v4, "entity":Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$ItemEntity;
    invoke-virtual/range {v27 .. v27}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getId()Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$ItemEntity;->tag:Ljava/lang/Object;

    .line 188
    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 168
    .end local v4    # "entity":Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$ItemEntity;
    .end local v10    # "summart":Ljava/lang/String;
    .end local v15    # "sport_long":Ljava/lang/String;
    .end local v23    # "min2":I
    .end local v28    # "sport_senconds":I
    :cond_8
    invoke-virtual/range {v27 .. v27}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getEndTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v34

    invoke-virtual/range {v27 .. v27}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getStartTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v36

    sub-long v34, v34, v36

    const-wide/16 v36, 0x3e8

    div-long v34, v34, v36

    const-wide/16 v36, 0x3c

    div-long v34, v34, v36

    move-wide/from16 v0, v34

    long-to-int v0, v0

    move/from16 v22, v0

    .line 169
    .local v22, "min":I
    if-gez v22, :cond_9

    .line 170
    invoke-virtual/range {v27 .. v27}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getStartTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v34

    invoke-virtual/range {v27 .. v27}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getEndTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v36

    sub-long v34, v34, v36

    const-wide/16 v36, 0x3e8

    div-long v34, v34, v36

    const-wide/16 v36, 0x3c

    div-long v34, v34, v36

    move-wide/from16 v0, v34

    long-to-int v0, v0

    move/from16 v22, v0

    .line 172
    :cond_9
    invoke-virtual/range {v27 .. v27}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getDistance()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v5, v8

    move/from16 v0, v22

    int-to-float v8, v0

    div-float/2addr v5, v8

    float-to-double v0, v5

    move-wide/from16 v34, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_2
.end method

.method private initData()V
    .locals 3

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity;->createData()Ljava/util/List;

    move-result-object v1

    .line 72
    .local v1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$ItemEntity;>;"
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter;

    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 73
    .local v0, "customAdapter":Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter;
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity;->myListView:Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;

    invoke-virtual {v2, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 74
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity;->myListView:Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;

    invoke-virtual {v2, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 75
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity;->myListView:Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;

    invoke-virtual {v2, p0}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 76
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 59
    const v0, 0x7f0e00be

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity;->total_distance:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f0e00bf

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity;->total_count:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f0e00c0

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity;->total_calorie:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f0e00c1

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity;->myListView:Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;

    .line 68
    return-void
.end method

.method private synthetic lambda$setListener$302(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity;->finish()V

    return-void
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 80
    const v0, 0x7f0e0070

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$$Lambda$1;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 83
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity;->mHandler:Landroid/os/Handler;

    .line 53
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity;->initView()V

    .line 54
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity;->initData()V

    .line 55
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity;->setListener()V

    .line 56
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$ItemEntity;

    .line 198
    .local v0, "entity":Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$ItemEntity;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 199
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "KEY_REALSPORT_ID"

    iget-object v2, v0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$ItemEntity;->tag:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 200
    const-string v2, "pace"

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$ItemEntity;->getSpeed()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity;->startActivity(Landroid/content/Intent;)V

    .line 202
    return-void
.end method

.method public setView()V
    .locals 1

    .prologue
    .line 46
    const v0, 0x7f04002b

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity;->setContentView(I)V

    .line 47
    return-void
.end method
