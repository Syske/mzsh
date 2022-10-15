.class public Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;
.super Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;
.source "SportShareActivity.java"


# static fields
.field public static final STATE_UNIT_DAY:I = 0x0

.field public static final STATE_UNIT_HOUR:I = -0x1

.field public static final STATE_UNIT_KEY:Ljava/lang/String; = "STATE_UNIT_KEY"

.field public static final STATE_UNIT_MONTH:I = 0x2

.field public static final STATE_UNIT_VALUE:Ljava/lang/String; = "STATE_UNIT_VALUE"

.field public static final STATE_UNIT_VALUE_END_TIME:Ljava/lang/String; = "STATE_UNIT_VALUE_END_TIME"

.field public static final STATE_UNIT_VALUE_START_TIME:Ljava/lang/String; = "STATE_UNIT_VALUE_START_TIME"

.field public static final STATE_UNIT_WEEK:I = 0x1


# instance fields
.field private iconPathString:Ljava/lang/String;

.field private state_unit:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;->getCutScreen()V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;->iconPathString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;->showShare(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getCutScreen()V
    .locals 3

    .prologue
    .line 76
    const v1, 0x7f0e0154

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 77
    .local v0, "ll_share_bitmap":Landroid/widget/LinearLayout;
    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/share/CutScreen;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/meizuUI/share/CutScreen;-><init>()V

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Lcom/meizu/smart/wristband/meizuUI/share/CutScreen;->getBitmappath(Landroid/view/View;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;->iconPathString:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v0    # "ll_share_bitmap":Landroid/widget/LinearLayout;
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private initView()V
    .locals 48

    .prologue
    .line 84
    const v43, 0x7f0e0171

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/TextView;

    .line 85
    .local v34, "tv_sport_step":Landroid/widget/TextView;
    const v43, 0x7f0e0086

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/TextView;

    .line 86
    .local v35, "tv_time":Landroid/widget/TextView;
    const v43, 0x7f0e0117

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    .line 87
    .local v17, "iv_photo":Landroid/widget/ImageView;
    const v43, 0x7f0e0156

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v39

    check-cast v39, Landroid/widget/TextView;

    .line 88
    .local v39, "tv_username":Landroid/widget/TextView;
    const v43, 0x7f0e0173

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/TextView;

    .line 89
    .local v36, "tv_tip2":Landroid/widget/TextView;
    const v43, 0x7f0e0174

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    .line 90
    .local v37, "tv_tip3":Landroid/widget/TextView;
    const v43, 0x7f0e0175

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v38

    check-cast v38, Landroid/widget/TextView;

    .line 93
    .local v38, "tv_tip4":Landroid/widget/TextView;
    const v43, 0x7f0e015f

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/TextView;

    .line 94
    .local v33, "tv_day_tip":Landroid/widget/TextView;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 95
    .local v8, "c":Ljava/util/Calendar;
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Purifit  "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const/16 v44, 0x5

    move/from16 v0, v44

    invoke-virtual {v8, v0}, Ljava/util/Calendar;->get(I)I

    move-result v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, "/"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const/16 v44, 0x2

    move/from16 v0, v44

    invoke-virtual {v8, v0}, Ljava/util/Calendar;->get(I)I

    move-result v44

    add-int/lit8 v44, v44, 0x1

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v33

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    invoke-static/range {p0 .. p0}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getLoginUser(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v18

    .line 99
    .local v18, "loginUser":Lcom/meizu/smart/wristband/models/database/entity/User;
    if-eqz v18, :cond_0

    invoke-virtual/range {v18 .. v18}, Lcom/meizu/smart/wristband/models/database/entity/User;->getPortrait()Ljava/lang/String;

    move-result-object v43

    if-eqz v43, :cond_0

    const-string v43, ""

    invoke-virtual/range {v18 .. v18}, Lcom/meizu/smart/wristband/models/database/entity/User;->getPortrait()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-nez v43, :cond_0

    .line 100
    invoke-virtual/range {v18 .. v18}, Lcom/meizu/smart/wristband/models/database/entity/User;->getPortrait()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v43 .. v43}, Lcom/meizu/smart/wristband/utils/BitmapUtil;->dncodeBase64(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v43

    invoke-static/range {v43 .. v43}, Lcom/meizu/smart/wristband/utils/BitmapUtil;->toRoundBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v43

    move-object/from16 v0, v17

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 102
    :cond_0
    if-eqz v18, :cond_1

    invoke-virtual/range {v18 .. v18}, Lcom/meizu/smart/wristband/models/database/entity/User;->getNickname()Ljava/lang/String;

    move-result-object v43

    if-eqz v43, :cond_1

    .line 103
    invoke-virtual/range {v18 .. v18}, Lcom/meizu/smart/wristband/models/database/entity/User;->getNickname()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v39

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v43

    const-string v44, "STATE_UNIT_KEY"

    const/16 v45, 0x0

    invoke-virtual/range {v43 .. v45}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v40

    .line 106
    .local v40, "unit":I
    const/16 v43, -0x1

    move/from16 v0, v40

    move/from16 v1, v43

    if-ne v0, v1, :cond_5

    .line 107
    new-instance v43, Ljava/util/Date;

    invoke-direct/range {v43 .. v43}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/servers/DBSportApi;->statSportByHour(Landroid/content/Context;Ljava/util/Date;)Ljava/util/List;

    move-result-object v24

    .line 108
    .local v24, "sportList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v43

    const-string v44, "STATE_UNIT_VALUE_START_TIME"

    const-wide/16 v46, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-wide/from16 v2, v46

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v26

    .line 109
    .local v26, "start":J
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v43

    const-string v44, "STATE_UNIT_VALUE_END_TIME"

    const-wide/16 v46, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-wide/from16 v2, v46

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    .line 110
    .local v14, "end":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 111
    .local v11, "clStart":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    .line 112
    .local v12, "clend":Ljava/util/Calendar;
    move-wide/from16 v0, v26

    invoke-virtual {v11, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 113
    invoke-virtual {v12, v14, v15}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 114
    const/16 v43, 0xb

    move/from16 v0, v43

    invoke-virtual {v11, v0}, Ljava/util/Calendar;->get(I)I

    move-result v28

    .line 115
    .local v28, "startHour":I
    const/16 v43, 0xb

    move/from16 v0, v43

    invoke-virtual {v12, v0}, Ljava/util/Calendar;->get(I)I

    move-result v16

    .line 116
    .local v16, "endHour":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 117
    .local v10, "clMiddle":Ljava/util/Calendar;
    const/16 v29, 0x0

    .line 118
    .local v29, "step":I
    const/4 v13, 0x0

    .line 119
    .local v13, "dis":I
    const/4 v9, 0x0

    .line 120
    .local v9, "calorie":I
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v43

    :cond_2
    :goto_0
    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->hasNext()Z

    move-result v44

    if-eqz v44, :cond_3

    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;

    .line 121
    .local v23, "spItem":Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->startTime:Ljava/util/Date;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 122
    const/16 v44, 0xb

    move/from16 v0, v44

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->get(I)I

    move-result v19

    .line 123
    .local v19, "mHour":I
    move/from16 v0, v19

    move/from16 v1, v28

    if-lt v0, v1, :cond_2

    move/from16 v0, v19

    move/from16 v1, v16

    if-gt v0, v1, :cond_2

    .line 124
    move-object/from16 v0, v23

    iget v0, v0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->allstep:I

    move/from16 v44, v0

    add-int v29, v29, v44

    .line 125
    move-object/from16 v0, v23

    iget v0, v0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->distance:I

    move/from16 v44, v0

    add-int v13, v13, v44

    .line 126
    int-to-float v0, v9

    move/from16 v44, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->calorie:F

    move/from16 v45, v0

    add-float v44, v44, v45

    move/from16 v0, v44

    float-to-int v9, v0

    goto :goto_0

    .line 129
    .end local v19    # "mHour":I
    .end local v23    # "spItem":Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;
    :cond_3
    new-instance v43, Lcom/meizu/smart/wristband/constant/SystemContant;

    invoke-direct/range {v43 .. v43}, Lcom/meizu/smart/wristband/constant/SystemContant;-><init>()V

    sget-object v32, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat0:Ljava/text/SimpleDateFormat;

    .line 130
    .local v32, "timeFormat0":Ljava/text/SimpleDateFormat;
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v44

    move-object/from16 v0, v32

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const v44, 0x7f080297

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual {v12}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v44

    move-object/from16 v0, v32

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v35

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v43

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, ""

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v34

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const v44, 0x7f08027d

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    int-to-float v0, v13

    move/from16 v44, v0

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatDistanceToStringForShare(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const v44, 0x7f08014c

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v36

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const v44, 0x7f080285

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    int-to-float v0, v9

    move/from16 v44, v0

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatCalorieToString(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const v44, 0x7f08014b

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v37

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    const/16 v43, 0x8

    move-object/from16 v0, v38

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    .end local v9    # "calorie":I
    .end local v10    # "clMiddle":Ljava/util/Calendar;
    .end local v11    # "clStart":Ljava/util/Calendar;
    .end local v12    # "clend":Ljava/util/Calendar;
    .end local v13    # "dis":I
    .end local v14    # "end":J
    .end local v16    # "endHour":I
    .end local v24    # "sportList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;>;"
    .end local v26    # "start":J
    .end local v28    # "startHour":I
    .end local v29    # "step":I
    .end local v32    # "timeFormat0":Ljava/text/SimpleDateFormat;
    :cond_4
    :goto_1
    return-void

    .line 136
    :cond_5
    invoke-static/range {p0 .. p0}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getSportAim(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 137
    .local v5, "aim":I
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v43

    const-string v44, "STATE_UNIT_VALUE"

    const-wide/16 v46, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-wide/from16 v2, v46

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v30

    .line 138
    .local v30, "time":J
    new-instance v41, Ljava/util/Date;

    move-object/from16 v0, v41

    move-wide/from16 v1, v30

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 139
    .local v41, "value":Ljava/util/Date;
    const/16 v25, 0x0

    .line 140
    .local v25, "sports":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;>;"
    if-nez v40, :cond_7

    .line 141
    invoke-static/range {v41 .. v41}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getDateStart(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v43

    invoke-static/range {v41 .. v41}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getDateEnd(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-static {v0, v1, v2}, Lcom/meizu/smart/wristband/servers/DBSportApi;->statSportByDay(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;

    move-result-object v25

    .line 142
    sget-object v43, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat10:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v43

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v35

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    :cond_6
    :goto_2
    if-eqz v25, :cond_4

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v43

    if-eqz v43, :cond_4

    .line 160
    const/16 v43, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;

    .line 161
    .local v21, "s":Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    iget v0, v0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->allstep:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, ""

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v34

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const v44, 0x7f08027d

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v21

    iget v0, v0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->distance:I

    move/from16 v44, v0

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatDistanceToStringForShare(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const v44, 0x7f08014c

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v36

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const v44, 0x7f080285

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v21

    iget v0, v0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->calorie:F

    move/from16 v44, v0

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatCalorieToString(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const v44, 0x7f08014b

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v37

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    const-string v43, "lenovo_wxf"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, " calorie = "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v21

    iget v0, v0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->calorie:F

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    if-nez v40, :cond_a

    .line 166
    move-object/from16 v0, v21

    iget v0, v0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->allstep:I

    move/from16 v43, v0

    move/from16 v0, v43

    if-ge v0, v5, :cond_9

    .line 167
    const v43, 0x7f08027e

    move-object/from16 v0, v38

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 143
    .end local v21    # "s":Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;
    :cond_7
    const/16 v43, 0x1

    move/from16 v0, v40

    move/from16 v1, v43

    if-ne v0, v1, :cond_8

    .line 144
    const v43, 0x7f0e0172

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 145
    .local v6, "avg_sleep":Landroid/widget/TextView;
    const v43, 0x7f0802bd

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    invoke-static/range {v41 .. v41}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getWeekDateRange(Ljava/util/Date;)[Ljava/util/Date;

    move-result-object v42

    .line 147
    .local v42, "weekRange":[Ljava/util/Date;
    const/16 v43, 0x0

    aget-object v43, v42, v43

    const/16 v44, 0x1

    aget-object v44, v42, v44

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-static {v0, v1, v2}, Lcom/meizu/smart/wristband/servers/DBSportApi;->statSportByWeek(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;

    move-result-object v25

    .line 148
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v44, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat13:Ljava/text/SimpleDateFormat;

    const/16 v45, 0x0

    aget-object v45, v42, v45

    invoke-virtual/range {v44 .. v45}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string/jumbo v44, "~"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    sget-object v44, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat13:Ljava/text/SimpleDateFormat;

    const/16 v45, 0x1

    aget-object v45, v42, v45

    invoke-virtual/range {v44 .. v45}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v35

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 149
    .end local v6    # "avg_sleep":Landroid/widget/TextView;
    .end local v42    # "weekRange":[Ljava/util/Date;
    :cond_8
    const/16 v43, 0x2

    move/from16 v0, v40

    move/from16 v1, v43

    if-ne v0, v1, :cond_6

    .line 150
    const v43, 0x7f0e0172

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 151
    .restart local v6    # "avg_sleep":Landroid/widget/TextView;
    const v43, 0x7f0802b3

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    invoke-static/range {v41 .. v41}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getMonthDateRange(Ljava/util/Date;)[Ljava/util/Date;

    move-result-object v20

    .line 153
    .local v20, "monthRange":[Ljava/util/Date;
    const/16 v43, 0x0

    aget-object v43, v20, v43

    const/16 v44, 0x1

    aget-object v44, v20, v44

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-static {v0, v1, v2}, Lcom/meizu/smart/wristband/servers/DBSportApi;->statSportByMonth(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;

    move-result-object v25

    .line 154
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v44, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat13:Ljava/text/SimpleDateFormat;

    const/16 v45, 0x0

    aget-object v45, v20, v45

    invoke-virtual/range {v44 .. v45}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string/jumbo v44, "~"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    sget-object v44, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat13:Ljava/text/SimpleDateFormat;

    const/16 v45, 0x1

    aget-object v45, v20, v45

    invoke-virtual/range {v44 .. v45}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v35

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 169
    .end local v6    # "avg_sleep":Landroid/widget/TextView;
    .end local v20    # "monthRange":[Ljava/util/Date;
    .restart local v21    # "s":Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;
    :cond_9
    const v43, 0x7f08027c

    move-object/from16 v0, v38

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 170
    :cond_a
    const/16 v43, 0x1

    move/from16 v0, v40

    move/from16 v1, v43

    if-ne v0, v1, :cond_b

    .line 171
    invoke-static/range {v41 .. v41}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getWeekDateRange(Ljava/util/Date;)[Ljava/util/Date;

    move-result-object v42

    .line 172
    .restart local v42    # "weekRange":[Ljava/util/Date;
    const/16 v43, 0x0

    aget-object v43, v42, v43

    const/16 v44, 0x1

    aget-object v44, v42, v44

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-static {v0, v1, v2}, Lcom/meizu/smart/wristband/servers/DBSportApi;->getBestSportByDay(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;

    move-result-object v7

    .line 173
    .local v7, "bestDay":Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 174
    .local v4, "a":Ljava/util/Calendar;
    iget-object v0, v7, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->startTime:Ljava/util/Date;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 175
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v44

    const v45, 0x7f0c0004

    invoke-virtual/range {v44 .. v45}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v44

    const/16 v45, 0x7

    move/from16 v0, v45

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v45

    add-int/lit8 v45, v45, -0x1

    aget-object v44, v44, v45

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, ","

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 176
    .local v22, "s1":Ljava/lang/String;
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const v44, 0x7f080284

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const v44, 0x7f080286

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    iget v0, v7, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->allstep:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const v44, 0x7f080288

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v38

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 177
    .end local v4    # "a":Ljava/util/Calendar;
    .end local v7    # "bestDay":Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;
    .end local v22    # "s1":Ljava/lang/String;
    .end local v42    # "weekRange":[Ljava/util/Date;
    :cond_b
    const/16 v43, 0x2

    move/from16 v0, v40

    move/from16 v1, v43

    if-ne v0, v1, :cond_d

    .line 178
    invoke-static/range {v41 .. v41}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getMonthDateRange(Ljava/util/Date;)[Ljava/util/Date;

    move-result-object v20

    .line 179
    .restart local v20    # "monthRange":[Ljava/util/Date;
    const/16 v43, 0x0

    aget-object v43, v20, v43

    const/16 v44, 0x1

    aget-object v44, v20, v44

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-static {v0, v1, v2}, Lcom/meizu/smart/wristband/servers/DBSportApi;->getBestSportByDay(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;

    move-result-object v7

    .line 180
    .restart local v7    # "bestDay":Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;
    invoke-static/range {p0 .. p0}, Lcom/meizu/smart/wristband/utils/LocaleUtil;->isChinese(Landroid/content/Context;)Z

    move-result v43

    if-eqz v43, :cond_c

    sget-object v43, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat4:Ljava/text/SimpleDateFormat;

    iget-object v0, v7, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->startTime:Ljava/util/Date;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v22

    .line 181
    .restart local v22    # "s1":Ljava/lang/String;
    :goto_3
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const v44, 0x7f080284

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const v44, 0x7f080286

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    iget v0, v7, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->allstep:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const v44, 0x7f080288

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v38

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 180
    .end local v22    # "s1":Ljava/lang/String;
    :cond_c
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v44, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat16:Ljava/text/SimpleDateFormat;

    iget-object v0, v7, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->startTime:Ljava/util/Date;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, ","

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto :goto_3

    .line 183
    .end local v7    # "bestDay":Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;
    .end local v20    # "monthRange":[Ljava/util/Date;
    :cond_d
    const/16 v43, 0x8

    move-object/from16 v0, v38

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private setListener()V
    .locals 3

    .prologue
    .line 192
    const v1, 0x7f0e0073

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 193
    .local v0, "imageView":Landroid/widget/ImageView;
    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity$2;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity$2;-><init>(Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    const v1, 0x7f0e0162

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity$3;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity$3;-><init>(Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    const v1, 0x7f0e0163

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity$4;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity$4;-><init>(Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    const v1, 0x7f0e0164

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity$5;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity$5;-><init>(Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    const v1, 0x7f0e0165

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity$6;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity$6;-><init>(Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    const v1, 0x7f0e0166

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity$7;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity$7;-><init>(Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    return-void
.end method

.method private showShare(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "iconPathString"    # Ljava/lang/String;
    .param p2, "platform"    # Ljava/lang/String;

    .prologue
    .line 248
    new-instance v0, Lcn/sharesdk/onekeyshare/OnekeyShare;

    invoke-direct {v0}, Lcn/sharesdk/onekeyshare/OnekeyShare;-><init>()V

    .line 249
    .local v0, "oks":Lcn/sharesdk/onekeyshare/OnekeyShare;
    invoke-virtual {v0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->disableSSOWhenAuthorize()V

    .line 250
    const v1, 0x7f08011d

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setComment(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setDialogMode()V

    .line 252
    invoke-static {}, Lcom/meizu/smart/wristband/utils/SdCardUtil;->ExistSDCard()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/meizu/smart/wristband/utils/SdCardUtil;->getSDFreeSize()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 253
    invoke-virtual {v0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setImagePath(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setImageUrl(Ljava/lang/String;)V

    .line 256
    :cond_0
    invoke-virtual {v0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setFilePath(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->disableSSOWhenAuthorize()V

    .line 258
    if-eqz p2, :cond_1

    .line 259
    invoke-virtual {v0, p2}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setPlatform(Ljava/lang/String;)V

    .line 261
    :cond_1
    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/share/ShareContentCustomizeDemo;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/meizuUI/share/ShareContentCustomizeDemo;-><init>()V

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setShareContentCustomizeCallback(Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;)V

    .line 262
    invoke-virtual {v0, p0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->show(Landroid/content/Context;)V

    .line 263
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;->initView()V

    .line 64
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;->setListener()V

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 66
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity$1;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 72
    return-void
.end method

.method public setView()V
    .locals 1

    .prologue
    .line 57
    const v0, 0x7f04003c

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;->setContentView(I)V

    .line 58
    return-void
.end method
